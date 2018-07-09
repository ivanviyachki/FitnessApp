class Change < ActiveRecord::Migration[5.1]
  def change
    change_column :foods, :protein, :float
  end
end
