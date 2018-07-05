class Food < ApplicationRecord
    belongs_to :food_category

    validates :calories, :fat, :protein, :carbs, :fiber, presence: true,
          numericality: { :message => ": Only positive number without spaces are allowed" }
    validates :name, presence: true,
  		length: { :minimum => 6}          

end