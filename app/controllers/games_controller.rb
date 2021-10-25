class GamesController < ApplicationController
  def index
    @games = Game.includes(:game_genres).all
  end

  def show
    @game = Game.find(params[:id])
  end
end
