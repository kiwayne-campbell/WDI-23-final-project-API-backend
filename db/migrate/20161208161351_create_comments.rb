class CreateComments < ActiveRecord::Migration[5.0]
  def change
    create_table :comments do |t|
      t.string :title
      t.date :comment_date
      t.text :body
      t.references :user, foreign_key: true
      t.references :festival, foreign_key: true

      t.timestamps
    end
  end
end
