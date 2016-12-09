class CreateFestivals < ActiveRecord::Migration[5.0]
  def change
    create_table :festivals do |t|
      t.float :cost
      t.date :start
      t.date :finish
      t.integer :minimum_age
      t.string :location
      t.text :details
      t.string :image

      t.timestamps
    end
  end
end
