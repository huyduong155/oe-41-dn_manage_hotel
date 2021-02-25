# frozen_string_literal: true

class RoomBooking < ApplicationRecord
  belongs_to :room
  belongs_to :booking
end
