class CreateBodyWeights < ActiveRecord::Migration[5.1]
  def change
    create_table :body_weights do |t|
      t.float :weight
      t.date :date

      t.timestamps
    end
  end
end
