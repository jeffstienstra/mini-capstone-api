class OrdersController < ApplicationController
  def index
    # orders = Order.where(user_id: current_user.id)
    orders = current_user.orders
    render json: orders
  end

  def create
    product = Product.find_by(id: params[:product_id])
    price = product.price.to_i
    subtotal = price * params[:quantity].to_i
    tax = subtotal * 0.07
    total = subtotal + tax

    order = Order.new(
      user_id: current_user.id,
      product_id: params[:product_id],
      quantity: params[:quantity],
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
