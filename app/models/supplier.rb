class Supplier < ApplicationRecord
  validates :name, presence: true
  validates :phone, presence: true
  validates :email, presence: true

  has_many :products
  # has many (uses 'where' b/c it has multiple products)
  # def products
  #   ProductProduct.where(supplier_id: id) #'where' will follow ALL that match that id
  # end
end
