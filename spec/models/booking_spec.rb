require 'rails_helper'

RSpec.describe Booking, type: :model do
  #pending "add some examples to (or delete) #{__FILE__}"
  
  it "allows only one user may book a given recording session" do
    booking1 = Booking.create(:user_id => 1, :recording_session_id => 1,:recording_date => "2016-05-14")
    booking2 = Booking.create(:user_id => 1, :recording_session_id => 2,:recording_date => "2016-05-14")
    expect(booking2).to_not be_valid
  end
end
