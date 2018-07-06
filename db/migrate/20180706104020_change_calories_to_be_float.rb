class ChangeCaloriesToBeFloat < ActiveRecord::Migration[5.1]
  def self.up
    change_table :foods do |t|
      t.change :calories, :float
    end
  end
  def self.down
    change_table :fat do |t|
      t.change :calories, :integer
    end
  end
end
