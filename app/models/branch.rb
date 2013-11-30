class Branch < ActiveRecord::Base
   attr_accessible :display, :supplier_id, :add_1, :street, :town, :city, :email, :long, :lat

  belongs_to :supplier
  has_many :orders
end
