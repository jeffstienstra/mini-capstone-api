class SuppliersController < ApplicationController
  def index
    suppliers = Supplier.all
    render json: suppliers
  end

  def create
    supplier = Supplier.new(
      name: params[:name],
      phone: params[:phone],
      email: params[:email],
    )
    if supplier.save
      render json: supplier
    else
      render json: { errors: supplier.errors.full_messages }, status: 422
    end
  end

  def show
    supplier = Supplier.find_by(id: params[:id])
    render json: supplier
  end

  def update
    supplier = Supplier.find_by(id: params[:id])
    supplier.name = params[:name] || supplier.name
    supplier.phone = params[:phone] || supplier.phone
    supplier.email = params[:email] || supplier.email
    if supplier.save
      render json: supplier
    else
      render json: { errors: supplier.errors.full_messages }, status: 422
    end
  end

  def destroy
    supplier = Supplier.find_by(id: params[:id])
    supplier.destroy
    render json: { message: "Your Supplier has been thoroughly destroyed to death." }
  end
end
