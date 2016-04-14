class RecordingSession < ActiveRecord::Base
	has_many :bookings
end
