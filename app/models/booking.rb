class Booking < ActiveRecord::Base
	belongs_to :user
	belongs_to :recording_session
	validates :user_id, :recording_session_id, :presence => true
	validate :only_one_user_booking_per_day
	
	def only_one_user_booking_per_day
	  Booking.where(:recording_date => recording_date).each do |b|
	    if(b.user_id == user_id)
	      errors.add(:base,'Only one user can book a session per day')
	      break
	    end
	  end
	end
end
