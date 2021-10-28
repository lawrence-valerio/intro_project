class GenresController < ApplicationController
  def index
    @genres = Genre.includes(:game_genres).all
  end

  def show
    @genre = Genre.find(params[:id])

    @filtered_games = @genre.games.page params[:page]
  end
end
