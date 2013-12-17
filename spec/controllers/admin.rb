require 'spec_helper'


describe Admin::IndexController do
   @user = User.new(admin: false)


  describe "get#admin" do
    it "should redirect non-admin to root" do
      get 'index'
      response.should redirect_to(root_path)
    end
  end


 end



