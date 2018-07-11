class TrainingDay < ApplicationRecord
  has_many :exercises
  has_many :foods
end
