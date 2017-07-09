class CreateDailies < ActiveRecord::Migration
  def change
    create_table :dailies do |t|
      
      t.string :title
      t.string :content
      t.string :image

      t.integer :user_id
      t.integer :health_id
      t.timestamps null: false
    end
  end
end
