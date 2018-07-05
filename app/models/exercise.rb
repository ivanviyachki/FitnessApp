class Exercise < ApplicationRecord
    belongs_to :exercise_category

    validates :name, :difficulty, :exercise_category_id, presence: true

    validates :description, presence: true,
  		length: { :minimum => 20 }
end