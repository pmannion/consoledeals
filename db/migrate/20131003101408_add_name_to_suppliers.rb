class AddNameToSuppliers < ActiveRecord::Migration
  def change
    add_column :suppliers, :name, :string
  end
end
