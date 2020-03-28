Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  # Get info for a game
  get '/games/:id', to: 'games#show'
  # Create a game
  post '/games', to: 'games#create'
  # Update a game
  patch '/games/:id', to: 'games#update'
  # Delete a game
  delete '/games/:id', to: 'games#destroy'
end
