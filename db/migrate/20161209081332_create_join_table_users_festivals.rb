class CreateJoinTableUsersFestivals < ActiveRecord::Migration[5.0]
  def change
    create_join_table :users, :festivals do |t|
      # t.index [:user_id, :festival_id]
      # t.index [:festival_id, :user_id]
    end
  end
end
