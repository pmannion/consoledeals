class Product < ActiveRecord::Base
  attr_accessible :user_id, :supplier_id, :display, :name, :description, :category, :sub_category, :sub_category2, :price, :special_offer, :special_offer_price,
                  :special_offer_description,:start_date, :end_date, :irish_product, :image,  :gift_for, :console_format, :is_bundle, :item1,
                  :item2 ,:item3, :extra_controller, :bundle_value, :console_id

  belongs_to :supplier
  belongs_to :console
  has_many :line_items

  before_destroy :ensure_not_refrenced_by_any_line_item


  def self.search(search)
    if search
      where("name LIKE ?", "%#{search}%")
    else
      find(:all)
    end
  end

  private

  def ensure_not_referenced_by_any_line_item
    if line_items.empty?
      return true
    else
      errors.add(:base,'line items present')
      return false
    end
  end

end

