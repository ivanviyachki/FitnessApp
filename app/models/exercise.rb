class Exercise < ApplicationRecord
    belongs_to :exercise_category
    has_one :training_day

    validates :name, :difficulty, :exercise_category_id, presence: true

    validates_uniqueness_of :name

    validates :description, presence: true,
          length: { :minimum => 20 }
          
    #For Photo 

    has_attached_file :photo, styles: { medium: "600x600>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
    validates_attachment_content_type :photo, content_type: /\Aimage\/.*\z/

    #For movie

    has_attached_file :movie, :styles => 
    {
        :medium => { :geometry => "640x480", :format => 'mp4' },
        :thumb => { :geometry => "100x100#", :format => 'jpg', :time => 10 }
    }, :processors => [:transcoder]
    validates_attachment_content_type :movie, content_type: /\Avideo\/.*\z/
end