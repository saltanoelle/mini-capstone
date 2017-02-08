class OrdersController < ApplicationController

  # def create
  #   carted_products = current_user.carted_products.where(status: "carted")
  #   # subtotal = 0 
  #   # carted_products.each do |carted_product|
  #   #   subtotal += (carted_product.product.price * carted_product.quantity.to_f)
  #   #  end 
  #   #  tax = subtotal * 0.09
  #   #  total = subtotal + tax

  #    # order= Order.create(
  #    #  user_id: current_user.id,
  #    #  subtotal: subtotal,
  #    #  tax: tax,
  #    #  total: total)

  #   order = Order.create(user_id: current_user.id)
  #   carted_products.update_all(status: "purchased", order_id: order.id)
  #   order.calculate_totals
 

  #   flash[:success] = "Order successfully created"
  #   redirect_to "/orders/#{order.id}" 
  # end




  #    product = Product.find_by(id: product_id)
  #    order = Order.new(
  #      user_id: current_user.id, 
  #      subtotal:
  #      tax:
  #      total:
  #    )
  #    order.calculate_totals(product.price)
 
  #    order.save
 
  #    flash[:success] = "Order successfully created"
  #    redirect_to "/orders/#{order.id}" 
  # end

  #user_id, #subtotal, #tax, #total
  def create
    carted_products = current_user.carted_products.where(status: "carted")

    order = Order.create(user_id: current_user.id)
    carted_products.update_all(status: "purchased", order_id: order.id)
    order.calculate_totals

    flash[:success] = "Order successfully created"
    redirect_to "/orders/#{order.id}" 
  end


  def show
    @order = Order.find_by(id: params[:id])
  end
end
