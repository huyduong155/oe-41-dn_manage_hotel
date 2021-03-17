class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :customer
  belongs_to :room
end
