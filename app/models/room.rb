class Room < ActiveRecord::Base
	has_many :recording_sessions
	validates :room_name, :uniqueness => true
	scope :get_room_info, -> (date) {where("id IN(?)", RecordingSession.query_record_session(date).select(:room_id))}
end
