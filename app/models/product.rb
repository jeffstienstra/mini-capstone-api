class Product < ApplicationRecord
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
