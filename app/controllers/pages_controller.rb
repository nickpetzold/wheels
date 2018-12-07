class PagesController < ApplicationController
    skip_before_action :authenticate_user!, only: :home

  def home
    @cars = Car.all

    @car1 = @cars.sample
    @car2 = @cars.sample
    @car3 = @cars.sample
  end
end
