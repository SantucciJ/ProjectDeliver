class MenusController < ApplicationController
  before action :set_menu, only: [:show]

  def index
    @menus = Menu.all
  end

  def new
    @menu = Menu.new
  end

  def create
    @menu = Menu.new(menu_params)
  end

  def update
    @menu = Menu.find(params[:id])
    @menu.update(menu_params)
    @menu.save
  end

  def destroy
    @menu = Menu.find(params[:id])
    @menu.destroy
  end

  private

  def set_menus
    @menu = Menu.find(params[:id])
  end

  def menu_params
    params.require(:menu).permit(:title, :description, :price)
  end
end
