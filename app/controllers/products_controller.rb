class ProductsController < ApplicationController

  def index
    @products = Product.where(display: true)
  end

  def show
    @product = Product.find(params[:id])
  end

end
