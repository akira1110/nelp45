class CreatePosts < ActiveRecord::Migration[5.0]
  def change
    create_table :posts do |t|
      t.integer :board_id
      t.integer :message_id
      t.integer :response_id
      t.string :title
      t.string :message
      t.integer :user_id

      t.timestamps
    end
  end
end
