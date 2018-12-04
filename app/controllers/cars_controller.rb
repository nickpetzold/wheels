class CarsController < ApplicationController

  def show
    @car = Car.find(params[:id])
    @booking = Booking.new
  end

end
