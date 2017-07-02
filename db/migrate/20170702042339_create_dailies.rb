class CreateDailies < ActiveRecord::Migration
  def change
    create_table :dailies do |t|
      
      t.string :title
      t.string :content
      t.string :image

      t.timestamps null: false
    end
  end
end
