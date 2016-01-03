class DeckPresenter < SimpleDelegator
  def current_slide
    slides.find_by(position: current_slide_position)
  end

  def current_slide_partial
    current_slide.partial_name
  end

  private

  def deck
    __getobj__
  end
end
