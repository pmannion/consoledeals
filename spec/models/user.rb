require 'spec_helper'

  describe User do
    it "has a valid factory" do
      FactoryGirl.create(:user).should be_valid
    end
    it "has a valid factory"
    it "is invalid without an email"

    it "is invalid without a firstname" do
      Factory.build(:user, email: nil).should_not be_valid
    end
  end