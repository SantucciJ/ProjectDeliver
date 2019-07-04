class DishesController < ApplicationController
  #before action :set_dishes, only: [:show]

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
    @dish = Di
    @dish.find(params[:id])
    @dish.destroy
  end

  private

  def set_dishes
    @dish = Dish.find(params[:id])
  end

  def dish_params
    params.require(:dish).permit(:title, :description, :price)
  end
end
