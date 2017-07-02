class CreateFoods < ActiveRecord::Migration
  def change
    create_table :foods do |t|
      t.string :category1
      t.string :category2
      t.string :image
      t.integer :kcal
      t.string :name
      t.timestamps null: false
    end
  end
end
