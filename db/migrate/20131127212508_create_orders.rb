class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.string :name
      t.string :add_1
      t.string :street
      t.string :town
      t.string :city
      t.string :country
      t.string :email
      t.string :pay_type
      t.integer :branch_id
      t.datetime :collection_date
      t.timestamps
    end
  end
end
