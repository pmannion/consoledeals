class ProductsController < ApplicationController

  def store_front
     @cart = current_cart
  end

  def show
    @cart = current_cart
    begin
      @product = Product.find(params[:id])
    rescue ActiveRecord::RecordNotFound
      logger.error "attempt to access invalid object"
      flash[:alert] = "Oops there is nothing there"
      redirect_to root_path
     end
   end

end
