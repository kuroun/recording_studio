class Booking < ActiveRecord::Base
	belongs_to :user
	belongs_to :recording_session
	validates :user_id, :recording_session_id, :presence => true
	#validates :user_id, :uniqueness => true
end
