Rails.application.routes.draw do
  resources :decks, only: [:show]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # Serve websocket cable requests in-process
  mount ActionCable.server => "/cable"

  root to: "home#show"
end
