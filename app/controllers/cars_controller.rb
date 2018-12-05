class CarsController < ApplicationController

  def index
    @cars = Car.all
    @markers = @cars.map do |car|
      {
        lng: car.longitude,
        lat: car.latitude
      }
    end
  end

  def show
    @car = Car.find(params[:id])
    @reviews = @car.reviews
    @booking = Booking.new
  end
end
