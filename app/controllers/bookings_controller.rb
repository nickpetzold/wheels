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
      redirect_to car_path(@car)
    end
  end

  def edit
    @booking = Booking.find(params[:id])
  end

  def update
    @booking = Booking.find(params[:id])
    @booking.update(booking_params)
    redirect_to cars_path
  end

  def dashboard
    @bookings = Booking.where(user_id: current_user)
    @reviews = Review.where(booking_id: @bookings)
    @cars = Car.where(user_id: current_user)
  end

  private

  def booking_params
    params.require(:booking).permit(:user_id, :car_id, :date_from, :date_to)
  end
end
