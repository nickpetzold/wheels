class CarsController < ApplicationController

  def index
    @cars = Car.all
  end

  def show
    @car = Car.find(params[:id])
    @reviews = @car.reviews
    @booking = Booking.new
  end

  def new
    @car = Car.new
  end

  def create
    @car = Car.new(car_params)
    if @car.save # results in true or false
      redirect_to @car
    else
      render :new
    end
  end

  def destroy
  end

  private


  def car_params
    params.require(:car).permit(:brand, :model, :year, :passengers, :price_per_day, :address, :fuel_type, :city, :country, :car_type_id, :zipcode)
  end

end
