class CreateHealths < ActiveRecord::Migration
  def change
    create_table :healths do |t|
      t.string :name
      t.integer :min
      t.integer :kcal
      
      t.timestamps null: false
    end
  end
end
