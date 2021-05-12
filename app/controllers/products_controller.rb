class ProductsController < ApplicationController
  def index
    products = Product.all
    render json: products
  end

  def create
    product = Product.new(
      name: params[:name] || "default item",
      price: params[:price] || "price TBD",
      image_url: params[:image_url] || "NO IMAGE UPLOADED",
      description: params[:description] || "defaul description",
      quantity: params[:quantity] || 0,
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
    product.image_url = params[:image_url] || product.image_url
    product.description = params[:description] || product.description
    product.quantity = params[:quantity] || product.quantity

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

