class PagesController < ApplicationController

  def home
    @experiences = Experience.all
  end
end
