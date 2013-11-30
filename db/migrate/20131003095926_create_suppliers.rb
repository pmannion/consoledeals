class CreateSuppliers < ActiveRecord::Migration
  def change
    create_table :suppliers do |t|
      t.string :image
      t.string :branch
      t.text :description
      t.string :email
      t.boolean :display
      t.string :link
      t.string :street
      t.string :town
      t.string :city
      t.string :county

      t.timestamps
    end
  end
end
