class Room < ApplicationRecord
  belongs_to :room_type

  scope :search, ->(name){where("name LIKE ?", "%#{name}%")}

  scope :rooms, ->(value){where("id not in (?)", value)}
end
