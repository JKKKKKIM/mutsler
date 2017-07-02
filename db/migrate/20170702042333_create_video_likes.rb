class CreateVideoLikes < ActiveRecord::Migration
  def change
    create_table :video_likes do |t|
      t.integer :video_ids
      t.integer :user_id
      t.timestamps null: false
    end
  end
end
