class Car < ApplicationRecord
  belongs_to :car_type
  belongs_to :user
  has_many :bookings
  has_many :reviews, through: :bookings

  validates :brand, presence: true
  validates :model, presence: true
  validates :year, presence: true
  validates :passengers, presence: true
  validates :fuel_type, presence: true, inclusion: { in: %w[diesel petrol electric hybrid gas] }
  validates :price_per_day, presence: true
  validates :city, presence: true
  validates :zipcode, presence: true
  validates :country, presence: true
  validates :car_type_id, presence: true
end
