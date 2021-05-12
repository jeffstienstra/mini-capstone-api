class ProductSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :price, :images, :is_discounted?, :tax, :total, :supplier_id, :created_at, :updated_at, :supplier
end
