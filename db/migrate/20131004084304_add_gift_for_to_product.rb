class AddGiftForToProduct < ActiveRecord::Migration
  def change
    add_column :products, :gift_for, :string
  end
end
