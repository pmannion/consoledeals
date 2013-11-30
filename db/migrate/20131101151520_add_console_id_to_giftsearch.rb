class AddConsoleIdToGiftsearch < ActiveRecord::Migration
  def change
    add_column :giftsearches, :console_id, :integer
  end
end
