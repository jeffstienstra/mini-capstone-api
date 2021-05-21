class OrdersController < ApplicationController
  before_action :authenticate_user

  def index
    # orders = Order.where(user_id: current_user.id)
    orders = current_user.orders
    render json: orders
  end

  def create
    calculated_subtotal = 0
    calculated_tax = 0
    calculated_total = 0
    carted_products = current_user.carted_products.where(status: :carted)
    # \/ ====== START HERE ====== \/
    carted_products.each do |carted_product|
      calculated_subtotal = calculated_subtotal + (carted_product.quantity * carted_product.product.price)
    end
    # i = 0
    # while i < current_user.carted_products
    #   if current_user.carted_products[i].find_by(status: :carted)
    #     i += 1
    #   else
    #     i += 1
    #   end
    # end
    product = Product.find_by(id: params[:product_id])
    price = product.price.to_i
    subtotal = price * params[:quantity].to_i
    tax = subtotal * 0.07
    total = subtotal + tax

    order = Order.new(
      user_id: current_user.id,
      subtotal: subtotal.to_i,
      tax: tax.to_i,
      total: total.to_i,
    )
    if order.save
      render json: order, status: :created
    else
      render json: { errors: order.errors.full_messages }, status: :bad_request
    end
  end

  def show
    # order = Order.find_by(id: params[:id])
    order = current_user.orders.find_by(id: params[:id])
    render json: order
  end
end
