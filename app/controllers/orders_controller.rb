class OrdersController < ApplicationController
  before_action :authenticate_user

  def index
    # orders = Order.where(user_id: current_user.id)
    orders = current_user.orders
    render json: orders, include: "carted_products.product"
  end

  def create
    calculated_subtotal = 0
    calculated_tax = 0
    calculated_total = 0
    carted_products = current_user.carted_products.where(status: :carted)

    carted_products.each do |carted_product|
      product = carted_product.product
      price = product.price
      tax = product.tax
      quantity = carted_product.quantity
      calculated_subtotal += quantity * price
      calculated_tax += quantity * tax
    end
    calculated_total = calculated_subtotal + calculated_tax

    # order = Order.new(
    #   user_id: current_user.id,
    #   subtotal: subtotal.to_i,
    #   tax: tax.to_i,
    #   total: total.to_i,

    if order.save
      render json: order, include: "carted_products.product", status: :created
    else
      render json: { errors: order.errors.full_messages }, status: :bad_request
    end
  end

  def show
    # order = Order.find_by(id: params[:id])
    order = current_user.orders.find_by(id: params[:id])
    render json: order, include: "carted_products.product"
  end
end
