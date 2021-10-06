class Restaurant < ApplicationRecord
    belongs_to :Location
    has_many :comments 
end
