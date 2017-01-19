class ProductsController < ApplicationController
  def get_products
    @first_product = Product.first
    @products = Products.all
  render "products.html.erb"
  end
end

