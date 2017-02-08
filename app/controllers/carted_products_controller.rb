class CartedProductsController < ApplicationController

  def index
   # @cart_count = current.user.carted_products.where(status: "carted").count 
   # @carted_products = current_user.carted_products.where(status: "carted")
   if current_user.carted_products.where(status: "carted").any?
     @carted_products = current_user.carted_products.where(status: "carted")
   else
    flash[:warning] = "You have no items on cart"
    redirect_to "/products"
   end 
  end

  def create
     product_id = params[:product_id]
     quantity = params[:quantity]
     carted_product = CartedProduct.create(
       user_id: current_user.id, 
       quantity: quantity, 
       product_id: product_id,
       status: "carted"
      )
     # carted_product.calculate_totals(product.price, quantity.to_f) 
    

 
     flash[:success] = "Product added to cart"
     redirect_to "/products"
  end

  def destroy
   carted_product = CartedProduct.find_by(id: params[:id])
   carted_product.update(status: "removed")

   flash[:success] = "Product Removed"
   redirect_to "/carted_products"
   end
 
 end
