class Order < ApplicationRecord
  belongs_to :user
  has_many :carted_products
  has_many :products, through: :carted_products
 

  # def calculate_totals(price, quantity)
  #   self.subtotal = price * quantity
  #   self.tax = subtotal * 0.09
  #   self.total = subtotal + tax
  # end

  def calculate_totals
    subtotal = 0
    carted_products.each do |carted_product|
      subtotal += carted_product.product.price * carted_product.quantity
    end

    tax = subtotal * 0.09
    total = subtotal + tax
    update(subtotal: subtotal, tax: tax, total: total)
  end



end
