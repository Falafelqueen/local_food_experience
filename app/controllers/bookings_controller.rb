class BookingsController < ApplicationController
  def show
    @booking = Booking.find(params[:id])
  end

  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(params_booking)
    @booking.user = current_user
    @booking.experience = Experience.find(params[:experience_id])
    if @booking.save
      redirect_to experience_path(@experience)
    else
      render :new
    end
  end

  private

  def params_booking
    params.require(:booking).permit(:start_date, :end_date)
  end
end
