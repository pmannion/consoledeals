class Supplier < ActiveRecord::Base
    attr_accessible :image, :branch, :description, :email, :display, :link, :street, :town, :city , :county, :name, :product_name

  has_many :products
  has_many :branches

end

