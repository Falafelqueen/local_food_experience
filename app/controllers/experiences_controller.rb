class ExperiencesController < ApplicationController
  def index
    # retrieve all experiences from db
    @experiences = Experience.all
  end

  def new
    # instantiate new experience instance and send it to the experience creation form
    @experience = Experience.new
  end

  def create
    # create experience instance with user provided parameters
    @experience = Experience.new(experience_params)
    # set user id to current user
    @experience.user_id = current_user.id
    if @experience.save
      # redirect flat listing if data provided is valid
      redirect_to root_path
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
