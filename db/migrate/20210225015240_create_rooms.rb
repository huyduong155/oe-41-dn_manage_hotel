class CreateRooms < ActiveRecord::Migration[6.1]
  def change
    create_table :rooms do |t|
      t.string :name
      t.float :price
      t.string :image
      t.integer :deleted, default: 0
      t.integer :status, default: 0
      t.string :description
      t.references :room_type, null: false, foreign_key: true

      t.timestamps
    end
  end
end
