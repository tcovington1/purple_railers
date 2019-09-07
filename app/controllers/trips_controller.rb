class TripsController < ApplicationController
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
  before_action :set_trip, only: [:show, :edit, :update, :destroy]
  def index
    @trips = Trip.all
=======
  def index
>>>>>>> Test
=======
>>>>>>> a9879c688f2dcc4519e7e479f3b6fcabc010a20b
=======

  before_action :set_trip, only: [:show, :edit, :update, :destroy]
  def index
    @trips = Trip.all
>>>>>>> 168b43f3572d1429a691618d97b7c7516b319122
  end

  def show
  end

  def new
    @trip = Trip.new
  end

  def create
    @trip = Trip.new(trip_params)
    if @trip.save
      redirect_to @trip
    else
      render :new
    end
  end

  def edit
  end
<<<<<<< HEAD

  def update
    if @trip.update(trip_params)
      redirect_to @trip
    else
      render :edit
    end
  end

  def destroy
    @trip.destroy
    redirect_to trips_path
  end

  private
  def set_trip
    @trip = Trip.find(params[:id])
  end

  def trip_params
    params.require(:trip).permit(:name, :start_date, :end_date)
  end

<<<<<<< HEAD

=======
>>>>>>> Test
=======
>>>>>>> 168b43f3572d1429a691618d97b7c7516b319122
end

