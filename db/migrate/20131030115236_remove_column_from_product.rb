class RemoveColumnFromProduct < ActiveRecord::Migration
def change
  remove_column :products, :console_id
end
end
