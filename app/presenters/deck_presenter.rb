class DeckPresenter < SimpleDelegator
  def current_slide
    slides.find_by(current_slide: true)
  end

  def current_slide_position
    current_slide.position
  end

  def current_slide_partial
    current_slide.partial_name
  end
end
