class User < ActiveRecord::Base
	has_many :bookings
	validates :contact_number, :uniqueness => true
end
