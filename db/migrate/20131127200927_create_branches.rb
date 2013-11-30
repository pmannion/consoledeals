class CreateBranches < ActiveRecord::Migration
  def change
    create_table :branches do |t|
      t.boolean :display
      t.integer :supplier_id
      t.string :add_1
      t.string :street
      t.string :town
      t.string :city
      t.string :email
      t.string :long
      t.string :lat
      t.timestamps
    end
  end
end
