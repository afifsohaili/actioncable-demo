class DecksController < ApplicationController
  def show
    render "show", locals: { deck: deck }
  end

  def deck
    Deck.find_by(slug: params[:id])
  end
end
