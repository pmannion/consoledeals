class Giftsearch < ActiveRecord::Base
  attr_accessible :min_spend, :max_spend, :category, :console_id, :show_games

   belongs_to :supplier
   belongs_to :console


  GIFT_FOR = ["Man", "Woman", "Boy", "Girl"]


end
