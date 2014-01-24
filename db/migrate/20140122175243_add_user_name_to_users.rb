class AddUserNameToUsers < ActiveRecord::Migration
  def change
    add_column :users, :user_name, :string, limit: 6
  end
end
