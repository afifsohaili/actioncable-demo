class DecksController < ApplicationController
  layout "slide_deck"

  def show
    render "show", locals: { deck: deck }
  end

  private

  def deck
    @deck ||= DeckPresenter.new(Deck.find_by(slug: params[:id]))
  end
end
