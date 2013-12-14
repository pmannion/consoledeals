class UsersController < ApplicationController

  before_filter :authenticate_current_user , only: :show
  before_filter :authenticate_admin , only: :index

  def index
    @users = User.where(ban: false).paginate(per_page: 25, page: params[:page], order: ('created_at DESC'))
  end

  def banned
    @users = User.where(ban: true).paginate(per_page: 25, page: params[:page], order: ('created_at DESC'))
  end

  def banned_page

  end

  def ban_user
    @user = User.find(params[:id])
    @user.update_attribute(:ban, true)
    flash[:notice] = "You have banned user #{@user.email}"
    redirect_to :controller => 'users', :action => 'banned'
  end

  def remove_ban
    @user = User.find(params[:id])
    @user.update_attribute(:ban, false)
    flash[:notice] = "You have un banned user #{@user.email}"
    redirect_to :controller => 'users', :action => 'index'
  end

  def show
    @user = User.find(params[:id])
    @orders = current_user.orders.paginate(per_page:2 , page: params[:page] ,order: ('created_at DESC'))
    @adverts = current_user.adverts.order('created_at DESC')
    @searches = current_user.giftsearches.order('created_at DESC').limit(5)
  end

  private

  def authenticate_current_user
    flash[:notice] = "Welcome to your profile"
  end

end



