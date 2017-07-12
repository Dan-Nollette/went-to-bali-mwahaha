class CartsController < ApplicationController

  def show
    if current_user
      @previous_orders = current_user.previous_orders
    end
    @order_items = current_order.order_items
  end

  def finalize
    if current_user
      current_order.finalize(current_user)
      session[:order_id] = nil
      redirect_to cart_path
    else
      flash[:alert] = "You need to sign up or sign in to complete your order."
      redirect_to sign_in_path
    end
  end

end
