class OrdersController < ApplicationController
  #before action :set_order, only: [:show]

  def index
    @orders = Order.all
  end

  def new
    @order = Order.new
  end

  def create
    @order = Order.new(order_params)
  end

  def update
    @order = Order.find(params[:id])
    @order.update(order_params)
    @order.save
  end

  def destroy
    @order = Order.find(params[:id])
    @order.destroy
  end

  private

  def set_orders
    @order = Order.find(params[:id])
  end

  def order_params
    params.require(:order).permit(:title, :description, :price)
  end
end
