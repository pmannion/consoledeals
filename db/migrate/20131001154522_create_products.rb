class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.integer :user_id
      t.integer :supplier_id
      t.boolean :display, :default => true
      t.string :name
      t.text :description
      t.string :category
      t.string :sub_category
      t.string :sub_category2
      t.float :price, :precision => 2
      t.boolean :special_offer, :default => false
      t.float :special_offer_price
      t.string :special_offer_description
      t.date :start_date
      t.date :end_date
      t.boolean :irish_product, :default => false
      t.string :image

      t.timestamps
    end
  end
end
