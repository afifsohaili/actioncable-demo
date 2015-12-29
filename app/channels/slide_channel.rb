class SlideChannel < ApplicationCable::Channel
  def subscribed
    stream_from "slide_channel"
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end

  def prev(data)
    broadcast current_deck_id, current_slide_position
  end

  def next(data)
    slide = next_slide(data["deckId"], data["slidePosition"])
    broadcast :next, title: slide.title, body: slide.body
  end

  private

  def next_slide(current_deck_id, current_slide_position)
    Slide.find_by deck_id: current_deck_id, position: current_slide_position + 1
  end

  def broadcast(command, slide_details)
    data = slide_details.merge({ command: command })
    ActionCable.server.broadcast "slide_channel", data
  end
end
