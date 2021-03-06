class Car < ApplicationRecord
  include PgSearch
  belongs_to :car_type
  belongs_to :user, optional: true
  has_many :bookings, dependent: :destroy
  has_many :reviews, through: :bookings

  validates :brand, presence: true
  validates :model, presence: true
  validates :year, presence: true
  validates :passengers, presence: true
  validates :fuel_type, presence: true, inclusion: { in: %w[diesel petrol electric hybrid gas] }
  validates :price_per_day, presence: true
  validates :city, presence: true
  # validates :zipcode, presence: true
  validates :country, presence: true
  validates :car_type_id, presence: true
  validates :address, presence: true
  validates :photo, presence: true

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  pg_search_scope :search_by_city_brand_model,
    against: [:city, :brand, :model],
    using: {
      tsearch: { prefix: true } # <-- now `superman batm` will return something!
    }
end
