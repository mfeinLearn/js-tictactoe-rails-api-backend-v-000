class GamesController < ApplicationController
  # Add your GamesController code here

  def create #5
    #binding.pry
    @game = Game.create(game_params)
  #  @game.save
    render json: @game, status: 201
  end

  def show
    @game = Game.find(params[:id])
    render json: @game, status: 201
  end

  def update
    @game = Game.find(params[:id])
    @game.update(game_params)
    render json: @game, status: 202
  end

  def index
    @games = Game.all
    render json: @games, status: 200
  end


  private

  def game_params
    params.permit(state: [])
  end

end
