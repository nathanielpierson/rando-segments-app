class RunsController < ApplicationController
  def index
    @runs = Run.all
    render :index
  end
  def show
    @run = Run.find_by(id: params[:id])
    render :show
  end
end
