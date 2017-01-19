class ProductsController < ApplicationController
  def get_products
    @all_products = Product.all
  render "products.html.erb"
  end
end

