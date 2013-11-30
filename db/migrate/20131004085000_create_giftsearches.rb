class CreateGiftsearches < ActiveRecord::Migration
  def change
    create_table :giftsearches do |t|
      t.integer :min_spend
      t.integer :max_spend
      t.string :category
      t.string :gift_for

      t.timestamps
    end
  end
end
