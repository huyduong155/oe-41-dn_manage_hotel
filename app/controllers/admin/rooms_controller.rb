# frozen_string_literal: true

class Admin::RoomsController < Admin::AdminController
  def show
    @room_ids = Booking.room_ids_in_booking
    @temp = Room.rooms_booking @room_ids
    @rooms = @temp.paginate(page: params[:page]).per_page(Settings.paging_limit)
  end
end
