class AddShowGamesToGiftsearch < ActiveRecord::Migration
  def change
    add_column :giftsearches, :show_games, :boolean
  end
end
