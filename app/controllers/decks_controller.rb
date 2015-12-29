class DecksController < ApplicationController
  def show
    render "show", locals: { deck: deck }
  end

  def deck
    @deck ||= DeckPresenter.new(Deck.find_by(slug: params[:id]))
  end
end
