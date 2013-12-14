class AddUserIdToGiftsearch < ActiveRecord::Migration
  def change
    add_column :giftsearches, :user_id, :integer
  end
end
