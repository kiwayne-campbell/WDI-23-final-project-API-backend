class AddGeoToFestivals < ActiveRecord::Migration[5.0]
  def change
    add_column :festivals, :latitude, :float
    add_column :festivals, :longitude, :float
  end
end
