class ReviewsController < ApplicationController

  def new
    @booking = Booking.find(params[:booking_id])
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    @review.booking = Booking.find(params[:booking_id])
    @review.save
    redirect_to dashboard_path
  end

  def edit
    @booking = Booking.find(params[:id])
    @review = Review.find(params[:id])
  end

  def update
    @review = Review.find(params[:id])
    @review.update(review_params)
    redirect_to dashboard_path
  end

  private

  def review_params
    params.require(:review).permit(:title, :content, :rating)
  end

end

