class AddBioToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :dob, :date
    add_column :users, :user_location, :string
    add_column :users, :bio, :text
    add_column :users, :image, :string
  end
end
