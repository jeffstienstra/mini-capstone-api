class Product < ApplicationRecord
  validates :name, presence: true
  validates :price, presence: true
  validates :price, numericality: { greater_than: 0 }
  validates :description, presence: true
  validates :description, length: { in: 10..500 }
  validates :quantity, numericality: true

  belongs_to :supplier
  has_many :images
  has_many :orders, through: :carted_products
  has_many :category_products
  has_many :categories, through: :category_products

  #belongs to supplier (uses 'find_by' b/c it only has one supplier)
  # def supplier
  #   Supplier.find_by(id: supplier_id)
  # end

  def is_discounted?
    discounted = false
    discounted = true if price.to_i < 10
    discounted
  end

  def tax
    tax = price * 0.09
    tax
  end

  def total
    total = tax + price
    total
  end
end
