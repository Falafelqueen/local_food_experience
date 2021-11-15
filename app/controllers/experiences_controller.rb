class ExperiencesController < ApplicationController
  # list all experiences
  def index
    @experiences = Experience.all
  end

  # instantiate new experience instance and send it to the experience creation form
  def new
    @experience = Experience.new
  end

  # create a new experience
  def create
    # create experience instance with user provided parameters
    @experience = Experience.new(experience_params)
    # @experience = current_user.id # to be checked!!
    if @experience.save?
      # redirect flat listing if data provided is valid
      # redirect_to some_path
    else
      # show form again if user data not valid
      render :new
    end
  end

  private

  def experience_params
    # only allow permitted data to avoid security vulnerabilities
    params.require(:experience).permit(:name, :description, :price_per_hour, :min_time, :max_time)
  end
end
