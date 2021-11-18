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

  def change_status
    @booking = Booking.find(params[:id])
     if params[:status].present?
      @booking.update(status: params[:status])
    end
    redirect_to booking_path(@booking)
  end
  def destroy
     @booking = Booking.find(params[:id])
    @booking.destroy
    redirect_to dashboard_path
  end

  private


  def params_booking
    params.require(:booking).permit(:start_date, :end_date)
  end
end
