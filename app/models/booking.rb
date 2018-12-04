class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :car
  has_one :review

  validates :user_id, presence: true
  validates :car_id, presence: true
  validates :date_from, presence: true
  validates :date_to, presence: true
  validates :price, presence: true

  validate :date_from_cannot_be_in_the_past
  validate :date_to_cannot_be_before_date_from

  def date_from_cannot_be_in_the_past
    errors.add(:date_from, "can't be in the past") if date_from < Date.today
  end

  def date_to_cannot_be_before_date_from
    errors.add(:date_to, "can't be before date_from") if date_to < date_from
  end
end
