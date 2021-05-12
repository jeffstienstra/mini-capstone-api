class SupplierSerializer < ActiveModel::Serializer
  attributes :id, :name, :phone, :email, :products
end
