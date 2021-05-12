class ImagesController < ApplicationController
  def index
    images = Image.all
    render json: images
  end

  def create
    image = Image.new(
      url: params[:url],
      product_id: params[:product_id],
    )
    if image.save
      render json: image
    else
      render json: { errors: image.errors.full_messages }, status: 422
    end
  end

  def show
    image = Image.find_by(id: params[:id])
    render json: image
  end

  def update
    image = Image.find_by(id: params[:id])
    image.url = params[:url] || image.url
    image.product_id = params[:product_id] || image.product_id

    if image.save
      render json: image
    else
      render json: { errors: image.errors.full_messages }, status: 422
    end
  end

  def destroy
    image = Image.find_by(id: params[:id])
    image.destroy
    render json: { message: "Your image has been thoroughly destroyed to death." }
  end
end
