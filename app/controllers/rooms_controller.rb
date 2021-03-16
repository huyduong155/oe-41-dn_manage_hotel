class RoomsController < ApplicationController
  def index
    params[:start_date] ||= Time.zone.today
    params[:end_date] ||= Time.zone.today
    @rooms = Room.all
  end
end
