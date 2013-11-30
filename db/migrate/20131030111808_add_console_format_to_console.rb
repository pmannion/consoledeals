class AddConsoleFormatToConsole < ActiveRecord::Migration
  def change
    add_column :consoles, :console_format, :string
  end
end
