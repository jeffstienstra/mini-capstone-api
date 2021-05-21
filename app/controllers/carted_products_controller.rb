class CartedProductsController < ApplicationController
  before_action :authenticate_user

  def index
    carted_products = current_user.carted_products.where(status: :carted)
    render json: carted_products
  end

  def create
    carted_product = CartedProduct.new(
      user_id: current_user.id,
      product_id: params[:product_id],
      quantity: params[:quantity],
      order_id: nil,
      status: :carted,
    )
    if carted_product.save
      render json: carted_product.as_json
    else
      render json: { errors: carted_product.errors.full_messages }, status: 422
    end
  end

  def destroy
    carted_product = CartedProduct.find_by(id: params[:id])
    carted_product.status = "removed"
    render json: { message: "Product removed from cart." }
  end
end
