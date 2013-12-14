class Status < ActiveRecord::Base
  attr_accessible :status

  belongs_to :order
end
