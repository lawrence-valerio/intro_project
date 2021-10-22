class GamesController < ApplicationController
  def index
    @games = Game.includes(:genres).all
  end

  def show
    @game = Game.find(params[:id])
  end
end
