class CartedProduct < ApplicationRecord
  belongs_to :user
  belongs_to :product
  belongs_to :order, optional: true
  
  # def calculate_totals(price, quantity)
  #   self.subtotal = price * quantity
  #   self.tax = subtotal * 0.09
  #   self.total = subtotal + tax
  # end

end
