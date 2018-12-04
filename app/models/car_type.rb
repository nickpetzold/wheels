class CarType < ApplicationRecord
  has_many :cars

  validates :car_type, presence: true
end
