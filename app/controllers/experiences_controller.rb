class ExperiencesController < ApplicationController
  def index

    # get correct list depending on search input
    if params[:query].present?
      @experiences = Experience.search_by_name_and_address(params[:query])
    else
      @experiences = Experience.all
    end

    # define markers and info window for map
    @markers = @experiences.geocoded.map do |experience|
      {
        lat: experience.latitude,
        lng: experience.longitude,
        info_window: render_to_string(partial: "info_window", locals: { experience: experience })
        # image_url: helpers.asset_url(experience.photo.key)
      }
    end
  end

  def show
    @experience = Experience.find(params[:id])
  end

  def new
    # instantiate new experience instance and send it to the experience creation form
    @experience = Experience.new
  end

  def create
    # create experience instance with user provided parameters
    @experience = Experience.new(experience_params)
    # set user id to current user
    @experience.user = current_user
    if @experience.save
      # redirect experience listing if data provided is valid
      redirect_to user_path(@experience.user)
    else
      # show form again if user data not valid
      render :new
    end
  end

  def edit
    @experience = Experience.find(params[:id])
  end

  def update
    @experience = Experience.find(params[:id])
    @experience.update(experience_params)
    if @experience.save
      # redirect experience listing if data provided is valid
      redirect_to experience_path(@experience)
    else
      # show form again if user data not valid
      render :update
    end
  end

  private

  def experience_params
    # only allow permitted data to avoid security vulnerabilities
    params.require(:experience).permit(:name, :description, :price_per_hour, :min_time, :max_time, :photo, :address)
  end
end
