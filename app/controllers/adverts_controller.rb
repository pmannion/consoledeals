class AdvertsController < ApplicationController
  before_filter :authenticate_user! , :except => :index
  helper_method :sort_column, :sort_direction

  def index
    @cart = current_cart
    @adverts = Advert.paginate(:per_page => 15, :page => params[:page], :include => [:console], :order => ("price ASC")).search(params[:search])
    respond_to do |format|
      format.html
      format.js { @adverts }
    end
  end

  def new
    @advert = Advert.new
  end

  def create
    require 'prof_gem'
     @advert = current_user.adverts.new(params[:advert])
     @check_desc = @advert.description
     @filter = Checker.runcheck(@check_desc.to_s)

      if @advert.save
        flash[:notice] = "advert has been created for #{current_user.email}"
        redirect_to :controller => 'adverts', :action => 'index'
      else
        flash[:alert] = "advert was not saved"
        render 'new'
      end
  end

  def destroy
    @advert = current_user.adverts.find(params[:id])
    @advert.destroy
    flash[:notice] = "your advert has been deleted"
    redirect_to :back
  end


  private

  def sort_column
    Advert.column_names.include?(params[:sort]) ? params[:sort] : "description"
  end

  def sort_direction
    %w[asc desc].include?(params[:direction]) ? params[:direction] : "asc"
  end
end
