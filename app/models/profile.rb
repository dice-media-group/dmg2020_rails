class Profile < ApplicationRecord
    belongs_to :user
    validates  :city, presence: true 
    validates  :state, presence: true 

    has_one_attached :avatar
    has_one_attached :banner
end
