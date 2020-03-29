class GamesController < ApplicationController
  before_action :find_restaurant_with_url, only: [:show, :ping, :start_game]

  # Get Details of one game
  def show
    render json: @game
  end

  def ping
    render json: @game.ping
  end

  # Create a new game with default values
  def create
    @game = Game.new({
      url: params[:url],
      dice_start: params[:dice_start],
      has_started: false,
      has_ended: false,
      ping: '0-1',
    })

    if (@game.save)
      render json: @game
    else
      render json: { errors: @game.errors }
    end
  end

   # Update a game has_started
  def start_game
    if (@game)
      @game['has_started'] = true;
      @game['ping']= '1-0';
      if (@game.save)
        render json: @game
      else
        render json: { errors: @game.errors }
      end
    else
      render json: { error: "Could not find game"}, status: :not_found
    end
  end

  # Update a game information
  def update
  end

  #Destroy a game
  def destroy
  end

  private

  def find_restaurant_with_url
    @game = Game.find_by url: params[:url]
  end
end
