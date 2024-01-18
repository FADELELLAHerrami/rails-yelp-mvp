







class ReviewsController < ApplicationController
  def new
    # We need @restaurant in our `simple_form_for`
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review = Review.new
  end
  def create
    @review = Review.new(review_params)
    @review.save
    redirect_to restaurants_path
  end
  private
  def set_restaurant
    @restaurant = Restaurant.find(params[:id])
  end
  def review_params
    params.require(:review).permit(:content,:rating)
  end
end
