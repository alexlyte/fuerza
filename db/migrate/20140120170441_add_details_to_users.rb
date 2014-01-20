class AddDetailsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :classes, :text
    add_column :users, :interests, :text
    add_column :users, :about, :text
    add_column :users, :year, :text
  end
end
