class AddDisplayToConsoles < ActiveRecord::Migration
  def change
    add_column :consoles, :display, :boolean
  end
end
