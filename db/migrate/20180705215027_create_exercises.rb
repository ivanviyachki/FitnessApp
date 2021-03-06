class CreateExercises < ActiveRecord::Migration[5.1]
  def change
    create_table :exercises do |t|
      t.string :name
      t.text :description
      t.string :difficulty
      t.integer :exercise_category_id

      t.timestamps
    end
  end
end
