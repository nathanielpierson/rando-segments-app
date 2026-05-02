class FramesController < ApplicationController
  include ProjectImagePath

  def index
    @frames = Frame.all
    render :index
  end

  def show
    @frame = Frame.find_by(id: params[:id])
    render :show
  end
  end
  def create
    @frame = Frame.create(
      image_path: image_path[:params],
      level_id: level_id[:params],
      frame_type: frame_type[:params],
      time: time[:params]
    )
  end
end
