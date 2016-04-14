class CreateBookings < ActiveRecord::Migration
  def change
    create_table :bookings do |t|
      t.integer :user_id
      t.integer :recording_session_id
      t.date :recording_date
      t.string :comment

      t.timestamps
    end
  end
end
