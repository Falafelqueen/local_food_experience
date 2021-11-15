class ExperiencesController < ApplicationController
  # list all experiences
  def index
    @experiences = Experience.all
  end

  # instantiate new experience instance and send it to the experience creation form
  def new
    @experience = Experience.all
  end

  def create
    # create experience instance with user provided parameters
    @experience = Experience.new(experience_params)
    if @experience.save?
      # redirect user if data provided is valid
      # redirect_to some_path
    else
      # show form again if user data not valid
      render :new
    end
  end

  private

  def experience_params
    params.require(:experience).permit(:name, :description, :price_per_hour, :min_time, :max_time, :user_id)
  end
end
