class User < ApplicationRecord
    has_secure_password
    belongs_to :hometown, class_name: "Location"
    has_many :comments
    has_many :restaurants
    has_many :locations, through: :restaurants
end
