class CreateVideoReplies < ActiveRecord::Migration
  def change
    create_table :video_replies do |t|
      t.timestamps null: false
    end
  end
end
