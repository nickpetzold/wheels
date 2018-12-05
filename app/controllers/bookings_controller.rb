class BookingsController < ApplicationController
  def new
    @car = Car.find(params[:car_id])
    @booking = Booking.new
  end

  def create
    @car = Car.find(params[:car_id])
    @booking = Booking.new(booking_params)
    @booking.car = @car
    @booking.user = current_user
    @booking.price = (@booking.date_to - @booking.date_from).to_i * @car.price_per_day
    if @booking.save
      redirect_to cars_path
    else
      redirect_to cars_path
    end
  end

  def dashboard

  end

  private

  def booking_params
    params.require(:booking).permit(:user_id, :car_id, :date_from, :date_to)
  end
end
