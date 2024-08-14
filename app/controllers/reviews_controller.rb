class ReviewsController < ApplicationController
  def new
    @review = Review.new
    # @restaurant = Restaurant.find(params[:restaurant_id])
    redirect_to restaurant_path(@restaurant), status: :see_other
  end

  def create
    @review = Review.new(review_params)
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review.restaurant = @restaurant
    if @review.save # returns true or false
      redirect_to restaurant_path(@restaurant), status: :see_other
    else
      render "restaurants/show", status: :unprocessable_entity
    end
  end

  def review_params
    params.require(:review).permit(:content, :rating)
  end
end
