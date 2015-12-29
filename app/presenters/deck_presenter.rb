class DeckPresenter < SimpleDelegator
  def first_slide
    slides.find_by(position: 0)
  end
end
