class RecordingSession < ActiveRecord::Base
	has_many :bookings
	validate :valid_duration
	def valid_duration
		errors.add(:base,'each session is 2 hour 45 minutes long') if ((end_time.to_i - start_time.to_i) > (2.hours.to_i + 45.minutes.to_i))
	end
end
