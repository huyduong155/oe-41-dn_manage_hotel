class CreateCustomers < ActiveRecord::Migration[6.1]
  def change
    create_table :customers do |t|
      t.string :name
      t.string :id_card
      t.date :birthday
      t.string :address
      t.integer :deleted, default: 0

      t.timestamps
    end
  end
end
