class AddConsoleFieldsToProduct < ActiveRecord::Migration
  def change
    add_column :products, :console_id, :string
    add_column :products, :console_format, :string
    add_column :products, :is_bundle, :boolean
    add_column :products, :item1, :string
    add_column :products, :item2, :string
    add_column :products, :item3, :string
    add_column :products, :extra_controller, :boolean
    add_column :products, :bundle_value, :float
  end
end
