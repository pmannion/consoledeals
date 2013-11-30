class AdvertsController < ApplicationController

  before_filter :authenticate_user! , :except => :index

  def index
    @cart = current_cart
    @adverts = Advert.order('created_at DESC').includes(:console)
  end

  def new
    @advert = Advert.new
  end

  def create
     @advert = current_user.adverts.new(params[:advert])
      if @advert.save
        flash[:notice] = "advert has been created for #{current_user.email}"
        redirect_to root_path
      else
        flash[:elert] = "advert was not saved"
        render 'new'
      end
  end

  def destroy
    @advert = current_user.adverts.find(params[:id])
    @advert.destroy
    flash[:notice] = "your advert has been deleted"
    redirect_to root_path
  end
end
