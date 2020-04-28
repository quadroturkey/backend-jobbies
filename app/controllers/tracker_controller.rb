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
    params.require(:user).permit(:title, :company, :description, :search_date, :start_date, :app_sent)
  end

  
end
