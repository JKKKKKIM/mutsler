class CreateVideos < ActiveRecord::Migration
  def change
    create_table :videos do |t|
      t.string  :title
      t.string  :category1 
      t.string  :category2 
      t.string  :tag 
      
      t.integer :user_id
      
      
      t.timestamps null: false
    end
  end
end
