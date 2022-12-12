class Car < ApplicationRecord
    belongs_to :user

    validates :model, presence: true
    validates :brand, presence: true
    validates :year_realeased, presence: true
    validates :user_id, presence: true
    
    has_many :reservation , foreign_key: 'car_id' , dependent: :destroy
end