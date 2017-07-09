class CreateVideoReplies < ActiveRecord::Migration
  def change
    create_table :video_replies do |t|
      t.string  :content
      t.integer :user_id
      t.integer :video_id
      t.timestamps null: false
    end
  end
end
