class ProductsController < ApplicationController
  def index
    products = Product.all
    render json: products
  end

  def create
    product = Product.new(
      name: params[:name] || "default item",
      price: params[:price] || "price TBD",
      description: params[:description] || "defaul description",
      quantity: params[:quantity] || 0,
      supplier_id: params[:supplier_id],
    )
    if product.save
      render json: product
    else
      render json: { errors: product.errors.full_messages }, status: 422
    end
  end

  def show
    product = Product.find_by(id: params[:id])
    render json: product
  end

  def update
    product = Product.find_by(id: params[:id])
    product.name = params[:name] || product.name
    product.price = params[:price] || product.price
    product.description = params[:description] || product.description
    product.quantity = params[:quantity] || product.quantity
    product.supplier_id = params[:supplier_id] || product.supplier_id

    if product.save
      render json: product
    else
      render json: { errors: product.errors.full_messages }, status: 422
    end
  end

  def destroy
    product = Product.find_by(id: params[:id])
    product.destroy
    render json: { message: "Your product has been thoroughly destroyed to death." }
  end
end
