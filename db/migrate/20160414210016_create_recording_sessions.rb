class CreateRecordingSessions < ActiveRecord::Migration
  def change
    create_table :recording_sessions do |t|
      t.time :start_time
      t.time :end_time
      t.string :description

      t.timestamps
    end
  end
end
