class AddConsoleIdToProduct < ActiveRecord::Migration
  def change
    add_column :products, :console_id, :integer
  end
end
