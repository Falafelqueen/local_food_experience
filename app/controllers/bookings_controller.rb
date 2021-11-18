class BookingsController < ApplicationController
  def show
    @booking = Booking.find(params[:id])
    @experience = Experience.find(@booking.experience_id)
  end

  def new
    @booking = Booking.new
    @experience = Experience.find(params[:experience_id])
  end

  def create
    @experience = Experience.find(params[:experience_id])
    @booking = Booking.new(params_booking)
    @booking.user = current_user
    @booking.experience = @experience

    if @booking.save
      redirect_to booking_path(@booking)
    else
      render :new
    end
  end

  def update
    @booking = Booking.find(params)
  end
  # def destroy

  # end

  private


  def params_booking
    params.require(:booking).permit(:start_date, :end_date)
  end
end
