class ProductSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :price, :image_url, :is_discounted?, :tax, :total, :supplier_id, :created_at, :updated_at, :supplier
end
