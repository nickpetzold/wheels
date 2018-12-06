class ReviewsController < ApplicationController

  def new
    @booking = Booking.find(params[:booking_id])
    @review = Review.new
  end

  def create

  end

  def edit

  end

  def update

  end

  private

  def review_params
    params.require(:review).permit(:title, :content, :rating)
  end

end

