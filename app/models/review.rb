class Review < ApplicationRecord
  has_one :user, through: :bookings
  belongs_to :booking
  validates :content, length: { maximum: 500 }
  validates :rating, presence: true, inclusion: { in: 0..5 }, numericality: { only_integer: true }
end
