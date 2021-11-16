class Experience < ApplicationRecord
  belongs_to :user
  has_many :categories
  has_many :bookings
  has_one_attached :photo

  validates :description, length: { maximum: 500 }
  validates :name, length: { maximum: 20 }
  validates :price_per_hour, numericality: { only_integer: true }
  validates :min_time, numericality: { only_integer: true }
  validates :max_time, numericality: { only_integer: true }

end
