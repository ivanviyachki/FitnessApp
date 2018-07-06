class ExerciseCategory < ApplicationRecord
    has_many :exercises

    validates_uniqueness_of :name
end