class Change2 < ActiveRecord::Migration[5.1]
  def change
    change_column :foods, :fiber, :float
  end
end
