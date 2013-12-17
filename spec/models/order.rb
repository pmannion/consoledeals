require 'spec_helper'

describe Order do
  # before each test make the order type true , which means delivery and not store collection
  before { @order = Order.new(order_type: true)}

  subject { @order }
  it { should respond_to (:name)}
  it { should respond_to (:add_1)}
  it { should respond_to (:town)}
  it { should respond_to (:city)}
  it { should respond_to (:country)}
  it { should respond_to (:email)}

  describe "when email is not present" do
    before { @order.email = ""}
    it { should_not be_valid}
  end

  describe "when name is not present" do
    before { @order.name = ""}
    it { should_not be_valid}
  end


  describe "when town is not present" do
    before { @order.town = ""}
    it { should_not be_valid}
  end

  describe "when city is not present" do
    before { @order.city = ""}
    it { should_not be_valid}
  end


  describe "when country is not present" do
    before { @order.country = ""}
    it { should_not be_valid}
  end

  describe "when email format is invalid" do
    it "should be invalid" do
      add = %w[user@foo,com user_at_foo.org example.user@foo.
                     foo@bar_baz.com foo@bar+baz.com]
      add.each do |address|
        @order.email = address
        expect(@order).not_to be_valid
      end
    end
  end

  describe "when email format is valid" do
    it "should be valid" do
      add =  %w[user@foo.COM A_US-ER@f.b.org frst.lst@foo.jp a+b@baz.cn]
      add.each do |address|
        @order.email = address
        expect(@order).to be_valid
      end
    end
  end



end


