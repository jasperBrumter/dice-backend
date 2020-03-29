Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  # Get info for a game
  get '/games/:url', to: 'games#show'
  # Get Ping for a game
  get '/games/ping/:url', to: 'games#ping'
  # Create a game
  post '/games', to: 'games#create'
  # Start a game
  post '/games/:url/start', to: 'games#start_game'
  # Update a game
  patch '/games/:url', to: 'games#update'
  # Delete a game
  delete '/games/:url', to: 'games#destroy'


  # Get info for a player
  get '/players/:url', to: 'players#show'
  # Get Ping for a player
  get '/players/ping/:url', to: 'players#ping'
  # Create a player
  post '/players', to: 'players#create'
  # Start a player
  post '/players/:url/start', to: 'players#start_player'
  # Update a player
  patch '/players/:url', to: 'players#update'

end
