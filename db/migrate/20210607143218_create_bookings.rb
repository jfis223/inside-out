class CreateBookings < ActiveRecord::Migration[6.0]
  def change
    create_table :bookings do |t|
      t.datetime :check_in
      t.datetime :check_out
      t.integer :total_price
      t.references :feeling, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true
      t.boolean :acceptance, default: false

      t.timestamps
    end
  end
end
