class AdminController < ApplicationController

  before_filter :authenticate_admin


  private

  def authenticate_admin
   if current_user && current_user.admin
     flash[:notice] = "Welcome #{current_user.email}"
   else
     flash[:alert] = "There is nothing at that page, you have been sent back to the home page"
     redirect_to root_path
    end
  end
end
