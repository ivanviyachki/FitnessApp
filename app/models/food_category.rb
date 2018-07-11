class FoodCategory < ApplicationRecord
    has_many :foods
    
    validates_uniqueness_of :name

    #For Photo 

    has_attached_file :photo, styles: { medium: "600x600>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
    validates_attachment_content_type :photo, content_type: /\Aimage\/.*\z/
end