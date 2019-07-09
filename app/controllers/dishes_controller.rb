class DishesController < ApplicationController
  before_action :set_dishes, only: [:index]

  def index
    @dishes = Dish.all
  end

  def new
    @dish = Dish.new
  end

  def create
    if user.admin
      @dish = Dish.new(dish_params)
      @dish.save
      redirect to restaurant_path
    end
  end

  def update
    @dish = Dish.find(params[:id])
    @dish.update(dish_params)
    @dish.save
  end

  def destroy
    @dish = Dish.find(params[:id])
    @dish.destroy
  end

  private

  def set_restaurants
    @restaurant = Restaurant.find(params[:id])
  end

  def set_dishes
    @dish = Dish.find(params[:id])
  end

  def dish_params
    params.require(:dish).permit(:name, :description, :price)
  end
end
