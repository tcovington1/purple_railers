class TripsController < ApplicationController
  before_action :set_trip, only: [:show, :edit, :update, :destroy]
  def index
    @trips = Trip.all
  end

  def show
  end

  def new
  end

  def edit
  end

  private
  def set_trip
    @physician = Physician.find(params[:id])
  end

  def physician_params
    params.require(:physician).permit(:name, :specialty)
  end


end
