class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
	has_many :bookings
	validates :contact_number, :uniqueness => true
	validates :band_name, :contact_number, :contact_name, :presence => true
end
