class Food < ApplicationRecord
    belongs_to :food_category

    validates_uniqueness_of :name

    validates :name, presence: true,
  		length: { :minimum => 2}          

end