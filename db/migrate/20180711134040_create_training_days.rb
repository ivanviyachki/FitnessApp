class CreateTrainingDays < ActiveRecord::Migration[5.1]
  def change
    create_table :training_days do |t|
      t.references :exercise, foreign_key: true
      t.references :food, foreign_key: true

      t.timestamps
    end
  end
end
