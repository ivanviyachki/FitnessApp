class TrainingDay < ApplicationRecord
  has_one :exercises
  has_one :foods
end
