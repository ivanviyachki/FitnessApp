class Change1 < ActiveRecord::Migration[5.1]
  def change
    change_column :foods, :carbs, :float
  end
end
