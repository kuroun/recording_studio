class User < ActiveRecord::Base
	has_many :bookings
	validates :contact_number, :uniqueness => true
	validates :band_name, :contact_number, :contact_name, :presence => true
end
