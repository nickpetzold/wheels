class CarsController < ApplicationController
  def index
    @cars = Car.all
  end



  def show
    @car = Car.find(params[:id])
    @reviews = Car.reviews
    @booking = Booking.new
  end

end
