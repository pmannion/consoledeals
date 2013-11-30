class Console < ActiveRecord::Base
 attr_accessible :console_format, :name

  has_many :products
  has_many :adverts

end
