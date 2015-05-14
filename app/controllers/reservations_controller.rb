class ReservationsController < ApplicationController
  before_action :authorize
  before_action :set_book, only: [:create, :show, :edit, :destroy]
  before_action :set_reservation, only: [:destroy]


  def create
    @reservation = Reservation.new
    @reservation.user_id = @current_user.id
    @reservation.book = @book

    if @reservation.save
      redirect_to reservations_index_path, notice: "Reservation made!"
    else
      redirect_to reservations_index_path, alert: "No Reservation made!"
    end
  end

  def index
    @reservations = Reservation.where(user: @current_user)
  end

  def destroy
    @reservation.destroy
    redirect_to reservations_index_path(@current_user), notice: "Book returned."
  end

  private

  def set_book
    @book = Book.find_by(id: params[:book_id])
  end

  def set_reservation
    #@reservation = Reservation.find_by_user_id_and_book_id(:user_id, :book_id)
    @reservation = @book.reservations.where(user: @current_user).first
    #puts @reservation.inspect
  end

  def reservation_params
    params.require(:reservation).permit(:book_id).merge(user_id: @current_user.id)
  end
end
