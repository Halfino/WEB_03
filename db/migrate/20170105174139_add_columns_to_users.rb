class AddColumnsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :username, :string
    add_column :users, :image, :string
    add_column :users, :city, :string
    add_column :users, :age, :integer
    add_column :users, :phone, :string
    add_index :users, :username, unique: true
  end

end

