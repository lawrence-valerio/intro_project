class GamesController < ApplicationController
  def index
    @games = Game.includes(:game_genres).page params[:page]
  end

  def show
    @game = Game.find(params[:id])
  end

  def search
    @games = if params[:f] == 'All'
               Game.where('title LIKE ?', '%' + params[:q] + '%').page params[:page]
             else
               Game.joins(:genres).where('genres.genre_name' => params[:f]).where('title LIKE ?',
                                                                                  '%' + params[:q] + '%').page params[:page]
             end
  end
end
