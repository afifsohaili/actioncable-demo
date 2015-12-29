class DeckPresenter < SimpleDelegator
  def current_slide
    slides.find_by(current_slide: true)
  end
end
