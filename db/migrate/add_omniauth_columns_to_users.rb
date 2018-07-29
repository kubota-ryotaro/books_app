class AddOmniauthColumnsToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :provider, :integer, :limit => 8
    add_column :users, :uid, :string
    add_column :users, :name, :string

    add_index :users, [:uid, :provider], unique: true
  end
end
