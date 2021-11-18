require "open-uri"

class UsersController < ApplicationController
  def show
    @user = current_user
    if @user.photo.attachment.nil?
      picture = URI.open("https://sdchefs.org/wp-content/uploads/2016/07/chef-placeholder.png")
      @user.photo.attach(io: picture, filename: "user.png", content_type: "image/png")
      @user.save!
    end
    @my_experiences = Experience.where(user: params[:id])
    @my_pending_bookings = Booking.where(status: :active, experience_id: [@my_experiences])
raise
  end
end

# list bookings
# check whether some of my experiences have been booked - get all bookings with status "active" - show those with my experiences
# confirm/decline booking
# add a button or function that allows me to change the status of the booking to "archived"
