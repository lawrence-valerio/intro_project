class HomeController < ApplicationController
  def index
    @genres = Genre.includes(:game_genres).all
  end
end
