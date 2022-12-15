class ReviewsController < ApplicationController

  def new
    @review = Review.new
    @restaurant = Restaurant.find(params[:restaurant_id])
  end

  def create
    @review = Review.create(params_review)
    @review.restaurant = Restaurant.find(params[:restaurant_id])
    @review.user = current_user
    if @review.save!
      redirect_to restaurant_path(@review.restaurant)
    else
      render :new
    end
  end

  private

  def params_review
    params.require(:review).permit(:rating, :comment)
  end
end
