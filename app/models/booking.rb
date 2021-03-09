class Booking < ApplicationRecord
  belongs_to :room
  belongs_to :user

  scope :booked, (lambda do |start_date, end_date|
    select("room_id")
    .where("deleted=0")
    .where("(?)<=end_date and(?)>=start_date", start_date, end_date)
  end)
end
