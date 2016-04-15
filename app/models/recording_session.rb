class RecordingSession < ActiveRecord::Base
	has_many :bookings
	validate :valid_duration
	validate :close_for_lunch
	validate :morning_evening_close
	
	def valid_duration
		errors.add(:base,'each session is 2 hour 45 minutes long') if ((end_time.to_i - start_time.to_i) > (2.hours.to_i + 45.minutes.to_i))
	end
	
	def close_for_lunch
		errors.add(:start_time,'should not be between 12pm - 1pm') if(start_time.strftime('%H').to_i <= 13 && start_time.strftime('%H').to_i >= 12 )
	end
	
	def morning_evening_close
	  errors.add(:start_time,'should not be before 9am or after 9pm') if(start_time.strftime('%H').to_i < 9 || start_time.strftime('%H').to_i >= 21 )
	end
end
