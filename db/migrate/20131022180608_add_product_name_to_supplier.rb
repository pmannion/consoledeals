class AddProductNameToSupplier < ActiveRecord::Migration
  def change
    add_column :suppliers, :product_name, :string
  end
end
