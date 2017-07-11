class CreateVideoLikes < ActiveRecord::Migration
  def change
    create_table :video_likes do |t|
      t.string :user_id
      t.string :video_id
      t.timestamps null: false
    end
  end
end
