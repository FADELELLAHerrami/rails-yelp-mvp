class RestaurantsController < ApplicationController

  before_action :set_params, only: %i[show edit update destroy]



  def index
    @restaurants = Restaurant.all
  end
  def show
  end
  def new
    @restaurant = Restaurant.new
  end
  def create
    restaurant = Restaurant.new(restaurant_params)
    restaurant.save
    redirect_to restaurants_path
  end
  def edit
  end
  def update
    @restaurant.update(restaurant_params)
    redirect_to restaurants_path
  end
  def destroy

  end
  # action top
 
  private
  def restaurant_params
    params.require(:restaurant).permit(:name, :address, :phone_number, :category)
  end
  def set_params
    @restaurant = Restaurant.find(params[:id])
  end
end
