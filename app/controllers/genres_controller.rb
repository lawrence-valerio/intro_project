class GenresController < ApplicationController
  def index
    @genres = Genre.includes(:game_genres).all
  end

  def show
    @genre = Genre.find(params[:id])
  end
end
