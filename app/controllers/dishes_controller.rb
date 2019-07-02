class DishesController < ApplicationController
  #before action :set_menu, only: [:show, :destroy]

  def index
    @dishes = Dish.all
  end

  def new
    @dish = Dish.new
  end

  def create
    @dish = Dish.new(dish_params)
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

  def set_dishes
    @dish = Dish.find(params[:id])
  end

  def menu_params
    params.require(:dish).permit(:title, :description, :price)
  end
end
