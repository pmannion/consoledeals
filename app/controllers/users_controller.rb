class UsersController < ApplicationController

  before_filter :authenticate_admin , except: :show
  before_filter :protect_user_profile, only: :show

      def index
    @users = User.where(ban: false).paginate(per_page: 25, page: params[:page], order: ('created_at DESC'))
  end

  def banned
    @users = User.where(ban: true).paginate(per_page: 25, page: params[:page], order: ('created_at DESC'))
  end

  def banned_page
    #not in use for now, may provide a page for a higher ban level ( further restrict banned users)
  end

  # set user ban to true
  def ban_user
    @user = User.find(params[:id])
    @user.update_attribute(:ban, true)
    flash[:notice] = "You have banned user #{@user.email}"
    redirect_to :controller => 'users', :action => 'banned'
  end

  # set user ban to false
  def remove_ban
    @user = User.find(params[:id])
    @user.update_attribute(:ban, false)
    flash[:notice] = "You have un banned user #{@user.email}"
    redirect_to :controller => 'users', :action => 'index'
  end

  def show
    @orders = current_user.orders.paginate(per_page:2 , page: params[:page] ,order: ('created_at DESC'))
    @adverts = current_user.adverts.paginate(per_page:2 , page: params[:page] ,order: ('created_at DESC'))
    @searches = current_user.giftsearches.order('created_at DESC').limit(5)
    begin
      @user = User.find(params[:id])
    rescue ActiveRecord::RecordNotFound
      logger.error "attempt to access invalid object"
      flash[:notice] = "There was nothing at that page, you have been sent to the home page"
      redirect_to root_path
    end
  end

  private

  def protect_user_profile
    begin
      @user = User.find(params[:id])
    rescue ActiveRecord::RecordNotFound
      logger.error "Attempt to access invalid user"
      redirect_to root_path
    else
    if current_user != @user
      flash[:alert] = "You do not have access to that profile"
      redirect_to root_path
    end
   end
  end

end




