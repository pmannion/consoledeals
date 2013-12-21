class Giftsearch < ActiveRecord::Base
  attr_accessible :min_spend, :max_spend, :category, :console_id, :show_games, :amount

   belongs_to :supplier
   belongs_to :console
   belongs_to :user


  def amount

  end
end
