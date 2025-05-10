class RunsController < ApplicationController
  def index
    @runs = Run.all
    render :index
  end
  def show
    @run = Run.find_by(id: params[:id])
    render :show
  end
  def create
    @run = Run.create(
      level_id: params[:level_id],
      date_performed: params[:date_performed],
      minutes: params[:minutes],
      seconds: params[:seconds],
      milliseconds: params[:milliseconds]
    )
    render :show
  end
  def update
    @run = Run.find_by(id: params[:id])
    @run.update(
      level_id: params[:level_id],
      date_performed: params[:date_performed],
      minutes: params[:minutes],
      seconds: params[:seconds],
      milliseconds: params[:milliseconds]
    )
    render :show
  end
end
