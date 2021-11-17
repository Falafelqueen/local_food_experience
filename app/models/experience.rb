class Experience < ApplicationRecord
  belongs_to :user
  has_many :categories
  has_many :bookings
  has_one_attached :photo

  validates :description, length: { maximum: 500 }
  validates :name, length: { maximum: 50 }
  validates :price_per_hour, numericality: { only_integer: true }
  validates :min_time, numericality: { only_integer: true }
  validates :max_time, numericality: { only_integer: true }

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
end
