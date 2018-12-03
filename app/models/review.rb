class Review < ApplicationRecord
  belongs_to :booking
  validates :booking_id, presence: true, uniqueness: true
  validates :content, length: { minimum: 50, maximum: 500 }
end
