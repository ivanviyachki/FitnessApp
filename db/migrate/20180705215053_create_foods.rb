class CreateFoods < ActiveRecord::Migration[5.1]
  def change
    create_table :foods do |t|
      t.string :name
      t.integer :calories
      t.integer :fat
      t.integer :protein
      t.integer :carbs
      t.integer :fiber
      t.integer :food_category_id

      t.timestamps
    end
  end
end
