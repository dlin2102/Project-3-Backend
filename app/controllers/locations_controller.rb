class LocationsController < ApplicationController
  skip_before_filter :verify_authenticity_token

  def index
    @locations = Location.all
    render json: @locations
  end

  def show
    @location = Location.find(params[:id])
    render json: @location
  end

  def create
    @location = Location.new(location_params)
      if Location.exists?(name: @location.name)
        @existing = Location.find_by(name: @location.name)
        render json: @existing
      else
        @location.save
        render json: @location
      end
  end

  def update
    @location = Location.find(params[:id])
    @location.update(location_params)
    render json: @location
  end

  def destroy
    @location = Location.find(params[:id])
    @location.destroy
  end

  private

  def location_params
      params.require(:location).permit(:name)
  end

  end
