class ChangeFatType < ActiveRecord::Migration[5.1]
  def change
    change_column :foods, :fat, :float
  end
end
