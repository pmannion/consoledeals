class CreateAdverts < ActiveRecord::Migration
  def change
    create_table :adverts do |t|
      t.integer :user_id
      t.integer :console_id
      t.string :product_name
      t.string :condition
      t.text :description
      t.decimal :price
      t.string :phone

      t.timestamps
    end
  end
end
