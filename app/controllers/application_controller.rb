class ApplicationController < ActionController::Base
  protect_from_forgery

def cart_size
 @cart = current.cart.count
end
 private

  def current_cart
  Cart.find(session[:cart_id])
  rescue ActiveRecord::RecordNotFound
    cart = Cart.create
    session[:cart_id] = cart.id
    cart
  end

end
