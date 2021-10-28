class PublishersController < ApplicationController
  def index
    @publishers = Publisher.includes(:game_publishers).page params[:page]
  end

  def show
    @publisher = Publisher.find(params[:id])
  end
end
