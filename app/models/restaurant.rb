class Restaurant < ApplicationRecord
    belongs_to :user
    # belongs_to :location
    has_many :comments 

    validates :name, :description, :user, presence: true 
end
