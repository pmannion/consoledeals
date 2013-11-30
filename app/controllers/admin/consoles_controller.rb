class Admin::ConsolesController < ApplicationController

  def index
    @consoles = Console.all
  end

  def new
    @console = Console.new
  end

  def create
    @console = Console.new(params[:console])
    if @console.save
      flash[:notice] = "The console was created"
      redirect_to admin_path
    else
      flash[:alert] = "That console could not be created"
      render 'new'
      end
  end

  def edit
    @console = Console.find(params[:id])
  end

  def update
    @console = Console.find(params[:id])
    if @console.update_attributes(params[:console])
      flash[:notice] = 'Console has been updated'
      redirect_to admin_path
    end
  end

  def destroy
    @console = Console.find(params[:id])
    @console.destroy
    flash[:notice] = 'Console has been deleted'
    redirect_to admin_path
  end
end
