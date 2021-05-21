class ProductSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :price, :images, :is_discounted?,
             :tax, :total, :supplier_id, :created_at, :updated_at, :supplier

  belongs_to :supplier
  has_many :images
  has_many :categories
  has_many :carted_products
end
