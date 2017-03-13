class ActivitiesController < ApplicationController

  # GET /activities
  # GET /activities.json
  def index
    @location = Location.find(params[:location_id])
    @activities = @location.activities.all
    render json: @activities
  end

  def edit
    @location = Location.find(params[:location_id])
    @activity = @location.activities.find(params[:id])
    render json: @activity
  end

  def show
    @location = Location.find(params[:location_id])
    @activity = @location.activities.find(params[:id])
    render json: @activity
  end

  def create
    @location = Location.find(params[:location_id])
    @activity = @location.activities.create(activity_params)
    render json: @activity
  end

  def update
    @location = Location.find(params[:location_id])
    @activity = @location.activities.find(params[:id])
    @activity.update(activity_params)
    render json: @activity
  end

  def destroy
    @location = Location.find(params[:location_id])
    @activity = @location.activities.find(params[:id])
    @activity.destroy
  end

  private
    def activity_params
      params.require(:activity).permit(:name,:address,:category,:photo_url,:website_url,:description)
    end

  end
