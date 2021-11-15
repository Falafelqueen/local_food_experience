class Experience < ApplicationRecord
  belongs_to :user
  has_many :categories
  has_many :bookings
end
