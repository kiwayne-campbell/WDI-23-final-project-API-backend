class AddNameToFestivals < ActiveRecord::Migration[5.0]
  def change
    add_column :festivals, :festival_name, :string
  end
end
