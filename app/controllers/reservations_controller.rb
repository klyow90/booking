class ReservationsController < ApplicationController
  def index
    @reservations = Reservation.all
  end

  def new
    @reservation = Reservation.new
  end

  def create
    @reservation = Reservation.new(
      facility_id: params[:reservation][:facility_id],
      start: params[:reservation][:start_date] + ' ' + params[:timeslot][:start_time],
      end: params[:reservation][:end_date] + ' ' + params[:timeslot][:end_time],
      user_id: session[:user_id]
      )

    respond_to do |format|
      if @reservation.save
        format.html { redirect_to reservations_url, :flash => { :success => 'Reservation was successfully created.' } }
        format.json { render :show, status: :created, location: reservations_url }
      else
        format.html { render :new }
        format.json { render json: @reservation.errors, status: :unprocessable_entity }
      end
    end
  end

  private
    def reservation_params
      params.require(:reservation).permit(:start_date, :end_date, :facility_id)
    end
end
