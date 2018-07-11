class BodyWeight < ApplicationRecord
    
    def average_weight

        body_weights = BodyWeight.last(5)
        sum = 0
        body_weights.each do |body_weight|
            sum = sum + body_weight.weight
        end
        return sum/5
    end
    
end
