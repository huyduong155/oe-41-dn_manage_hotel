# frozen_string_literal: true

class CreateRoomTypes < ActiveRecord::Migration[6.1]
  def change
    create_table :room_types do |t|
      t.string :name
      t.integer :deleted

      t.timestamps
    end
  end
end
