# frozen_string_literal: true

class CreateBookings < ActiveRecord::Migration[6.1]
  def change
    create_table :bookings do |t|
      t.date :start_date
      t.date :end_date
      t.integer :status
      t.integer :deleted, default: 0
      t.references :user, null: false, foreign_key: true
      t.references :customer, null: false, foreign_key: true

      t.timestamps
    end
  end
end
