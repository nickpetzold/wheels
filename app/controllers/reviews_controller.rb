class ReviewsController < ApplicationController

  def new
    @booking = Booking.find(params[:booking_id])
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    @review.booking = Booking.find(params[:booking_id])
    @review.save
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

