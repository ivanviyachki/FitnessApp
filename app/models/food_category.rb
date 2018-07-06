class FoodCategory < ApplicationRecord
    has_many :foods
    
    validates_uniqueness_of :name
end