class Restaurant < ApplicationRecord
    belongs_to :location
    has_many :comments 
end
