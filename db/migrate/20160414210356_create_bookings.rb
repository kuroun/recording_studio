class CreateBookings < ActiveRecord::Migration
  def change
    create_table :bookings do |t|
      t.references :user
      t.references :recoding_session
      t.date :recording_date
      t.string :comment

      t.timestamps
    end
  end
end
