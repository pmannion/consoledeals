class Order < ActiveRecord::Base

  attr_accessible :order_type, :branch_id, :collection_date, :name, :email, :add_1, :street, :town, :city, :country, :pay_type
   # validations
  validates_presence_of :pay_type
  validates_presence_of :name, :add_1, :street, :country, :if => :validate_if_delivery
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, format: { with:VALID_EMAIL_REGEX },
            uniqueness: {case_sensitive: false}, :if => :validate_if_delivery

   def validate_if_delivery
     order_type == true
   end

   # status_id
   #1 = pending
   #2 = cancelled
   #3 = confirmed

  PAY_TYPE = ["Credit Card", "Debit Card"]

  has_many :line_items, :dependent => :destroy
  belongs_to :branch
  belongs_to :user
  has_many :statuses


  def add_line_items_from_cart(cart)
    cart.line_items.each do |item|
      item.cart_id = nil
      line_items << item
    end
  end

end
