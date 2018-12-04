class BookingsController < ApplicationController
  def create
    @booking = Booking.new(booking_params)
    car = Car.find(@booking.car_id)
    @booking.price = (@booking.date_to - @booking.date_from).to_i * car.price_per_day
    if @booking.save
      redirect_to cars_path
    else
      render new
    end
  end

  def dashboard

  end

  private

  def booking_params
    params.require(:booking).permit(:user_id, :car_id, :date_from, :date_to)
  end
end
