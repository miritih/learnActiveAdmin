class AddHdToUsers < ActiveRecord::Migration
  def change
    add_column :users, :hd, :text
  end
end
