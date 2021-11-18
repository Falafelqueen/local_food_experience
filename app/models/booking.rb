class Booking < ApplicationRecord
  belongs_to :experience
  belongs_to :user
  before_create :total_price
  enum status: {active: 0, archived: 1}

  def total_price
    self.total_price = (end_date - start_date).to_i * experience.price_per_hour
  end
end
