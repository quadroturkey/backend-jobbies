class TrackerController < ApplicationController

  def index
    @trackers = Tracker.all
  end

  def show
    @tracker = Tracker.find(params[:id])
  end

  def create
    @tracker = Tracker.create(tracker_params)
    if @tracker.valid?
      render json: { user: TrackerSerializer.new(@tracker) }, status: :created
    else
      render json: { error: 'failed to create tracker' }, status: :not_acceptable
    end
  end

  def update
  end

  def destroy
  end

  private 

  def tracker_params
    params.require(:tracker).permit(:title, :company, :description, :user_id)
  end

  
end
