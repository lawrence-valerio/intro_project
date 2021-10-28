class ApplicationController < ActionController::Base
  before_action :set_variables

  def set_variables
    @global_genres = Genre.includes(:game_genres).all
  end
end
