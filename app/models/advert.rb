class Advert < ActiveRecord::Base
   attr_accessible :console_id, :product_name, :description, :price, :phone , :condition, :user_id

  belongs_to :console
  belongs_to :user


  CONDITION = ["As new", "Good", "Fair", "Damaged - Do not buy"]

  def self.search(search)
    if search
      where("description ILIKE ?", "%#{search}%")
    else
       find(:all)
    end
  end

 end


