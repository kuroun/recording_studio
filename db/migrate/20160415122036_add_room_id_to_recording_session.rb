class AddRoomIdToRecordingSession < ActiveRecord::Migration
  def change
    add_column :recording_sessions, :room_id, :integer
  end
end
