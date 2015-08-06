class AddProviderToUsers < ActiveRecord::Migration
  def change
    add_column :users, :provider, :string
    add_column :users, :uid, :string
    add_column :users, :gender, :string
    add_column :users, :date_of_birth, :date
    add_column :users, :location, :string
    add_column :users, :bio, :string
  end

  add_index :users, :email, unique: true

end
