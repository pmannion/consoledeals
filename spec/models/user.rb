require 'spec_helper'

  describe User do
   before { @user = User.new(email: "mea@mail.com")}

    subject { @user }
    it { should respond_to (:email)}

    describe "when email is not present" do
      before { @user.email = ""}
      it { should_not be_valid}
    end

    describe "when password is too short" do
      before { @user.password = "yes"}
      it { should_not be_valid}
    end

    describe "when email format is invalid" do
      it "should be invalid" do
        add = %w[user@foo,com user_at_foo.org example.user@foo.
                     foo@bar_baz.com foo@bar+baz.com]
        add.each do |address|
          @user.email = address
          expect(@user).not_to be_valid
        end
      end
    end

    describe "when email format is valid" do
      it "should be valid" do
        add =  %w[user@foo.COM A_US-ER@f.b.org frst.lst@foo.jp a+b@baz.cn]
        add.each do |address|
          @user.email = address
          expect(@user).to be_valid
        end
      end
    end

    describe "when user visits admin page" do

    end




  end