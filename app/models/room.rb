class Room < ActiveRecord::Base
	has_many :recording_sessions
	validates :room_name, :uniqueness => true
end
