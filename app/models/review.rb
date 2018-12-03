class Review < ApplicationRecord
  belongs_to :booking
  validates :booking_id, presence: true, uniqueness: true
  validates :content, length: { minimum: 50, maximum: 500 }
  validates :rating, presence: true, inclusion: { in: 0..5 }, numericality: { only_integer: true }
end
