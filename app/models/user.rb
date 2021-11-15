class User < ApplicationRecord
  has_many :experiences
  has_many :bookings
end
