class LevelsController < ApplicationController
  def index
    @levels = Level.all
    render :index
  end
  def show
    @level = Level.find_by(id: params[:id])
    render :show
  end
end
