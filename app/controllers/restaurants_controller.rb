class RestaurantsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_restaurants, only: [:show, :create]

  def index
    @restaurants = Restaurant.all
  end

  def show
  end

  def new
    @restaurant = Restaurant.new
  end

  def edit
  end

  def create
    if user.admin
      @restaurant = Restaurant.new(params_restaurant)
      @restaurant.save
      redirect_to restaurants_path
    end
  end

  def update
    @restaurant = Restaurant.find(params[:id])
    @restaurant.update(restaurant_params)
    @restaurant.save
  end

  def destroy
    @restaurant = Restaurant.find(params[:id])
    @restaurant.destroy
  end

  private

  def set_restaurants
    @restaurant = Restaurant.find(params[:id])
  end

  def restaurant_params
    params.require(:restaurant).permit(:title, :description)
  end
end
