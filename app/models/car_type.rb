class CarType < ApplicationRecord
  has_many :cars

  validates :type, presence: true
end
