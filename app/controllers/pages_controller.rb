class PagesController < ApplicationController
  # requires user to be logged in to access all functionalities except for home
  # before_action :authenticate_user!
  # skip_before_action :authenticate_user!, only: :home

  def home
  end
end
