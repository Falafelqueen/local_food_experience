require "open-uri"

class UsersController < ApplicationController
  def show
    @user = current_user
    if @user.photo.attachment.nil?
      picture = URI.open("https://sdchefs.org/wp-content/uploads/2016/07/chef-placeholder.png")
      @user.photo.attach(io: picture, filename: "user.png", content_type: "image/png")
      @user.save!
    end
  end
end
