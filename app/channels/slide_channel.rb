class SlideChannel < ApplicationCable::Channel
  def subscribed
    stream_from "slide_channel"
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end

  def prev(data)
    slide = prev_slide(data["deckId"], data["slidePosition"])
    set_current_slide(slide)
    if slide.present?
      broadcast :prev, position: slide.position, title: slide.title, body: slide.body
    end
  end

  def next(data)
    slide = next_slide(data["deckId"], data["slidePosition"])
    set_current_slide(slide)
    if slide.present?
      broadcast :next, position: slide.position, title: slide.title, body: slide.body
    end
  end

  private

  def prev_slide(current_deck_id, current_slide_position)
    Slide.find_by deck_id: current_deck_id, position: current_slide_position - 1
  end

  def next_slide(current_deck_id, current_slide_position)
    Slide.find_by deck_id: current_deck_id, position: current_slide_position + 1
  end

  def set_current_slide(slide)
    return if slide.blank?
    deck = slide.deck
    deck.slides.update_all(current_slide: false)
    slide.update_attributes(current_slide: true)
  end

  def broadcast(command, slide_details)
    data = slide_details.merge({ command: command })
    ActionCable.server.broadcast "slide_channel", data
  end
end
