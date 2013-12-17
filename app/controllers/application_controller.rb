class ApplicationController < ActionController::Base
  protect_from_forgery


 private

  def current_cart
  Cart.find(session[:cart_id])
  rescue ActiveRecord::RecordNotFound
    cart = Cart.create
    session[:cart_id] = cart.id
    cart
  end

  def authenticate_admin
    if current_user && current_user.admin
      flash[:notice] = "Welcome #{current_user.email}"
    else
      flash[:alert] = "There is nothing at that page, you have been sent back to the home page"
      redirect_to root_path
    end
  end

end
