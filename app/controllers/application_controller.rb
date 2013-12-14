class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :check_not_banned

  def cart_size
    @cart = curren_cart.count
  end
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

  def check_not_banned
    if current_user && current_user.ban

    end
  end


end
