class Room < ActiveRecord::Base
	has_many :recording_sessions
end
