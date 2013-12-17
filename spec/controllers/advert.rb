require 'spec_helper'


describe AdvertsController do
  @advert = Advert.new(user_id:1 , console_id:2, product_name: "xbox", condition: "good", description: "as new", price: 59.99, phone: "12536" )

  describe "Advert create" do
    context "with valid attributes" do
      it "creates a new advert" do
        expect{
          post :create, @advert
        }
      end
    end
  end

end