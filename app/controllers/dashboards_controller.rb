class DashboardsController < ApplicationController
  def show
    @my_experiences = current_user.experiences
    @my_received_bookings = Booking.where(experience_id: [@my_experiences])
    @my_requested_bookings = current_user.bookings
  end
end

# order them by status (those i need to confirm) - recevied
# my bookings - sorted by date -
# s
