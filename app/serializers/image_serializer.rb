class ImageSerializer < ActiveModel::Serializer
  attributes :id, :url, :product_id, :product
end
