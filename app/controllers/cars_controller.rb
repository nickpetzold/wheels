class CarsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show, :new, :create]

  layout "map", only: [:index]

  def index
    if params["query"].present?
      @cars = Car.search_by_city(params["query"])
      @markers = @cars.map do |car|
        {
          lng: car.longitude,
          lat: car.latitude,
          id: car.id,
          infoWindow: { content: render_to_string(partial: "/cars/map_window", locals: { car: car }) }
        }
      end
    else
      @cars = Car.all
      @markers = @cars.map do |car|
        {
          lng: car.longitude,
          lat: car.latitude,
          id: car.id,
          infoWindow: { content: render_to_string(partial: "/cars/map_window", locals: { car: car }) }
        }
      end
    end
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
    params.require(:car).permit(:brand, :model, :year, :passengers, :price_per_day, :address, :fuel_type, :city, :country, :car_type_id, :zipcode, :photo)
  end
end
