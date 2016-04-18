require 'rails_helper'

RSpec.describe RecordingSession, type: :model do
  #pending "add some examples to (or delete) #{__FILE__}"
  it 'is 2 hour 45 minutes long' do
    session = RecordingSession.create(:start_time => '09:00', :end_time => '12:00' )
    expect(session).to_not be_valid
  end
  it 'closed for lunch from 12pm to 1pm daily' do
    session1 = RecordingSession.create(:start_time => '12:00', :end_time => '01:30')
    session2 = RecordingSession.create(:start_time => '12:30', :end_time => '02:00')
    expect(session1).to_not be_valid
    expect(session2).to_not be_valid
  end
  it 'opens for bookings from 9am to 9pm every week day' do
    session1 = RecordingSession.create(:start_time => '8:00', :end_time => '08:30')
    session2 = RecordingSession.create(:start_time => '21:00', :end_time => '21:30')
    expect(session1).to_not be_valid
    expect(session2).to_not be_valid
  end
  it 'should return available session for specific date' do
    user = User.create(:band_name => 'F4', :contact_name => 'John', :contact_number => '1234567890')
    room1 = Room.create(:room_name => "Room 1", :status => "used")
    room2 = Room.create(:room_name => "Room 2", :status => "repaired")
    room3 = Room.create(:room_name => "Room 3", :status => "used")
    session1 = RecordingSession.create(:start_time => '9:00', :end_time => '11:45', :room_id => room1.id)
    session2 = RecordingSession.create(:start_time => '9:00', :end_time => '11:45', :room_id => room2.id)
    session3 = RecordingSession.create(:start_time => '9:00', :end_time => '11:45', :room_id => room3.id) 
    date = '2016-04-20'.to_date
    booking = Booking.create(:recording_date => date, :recording_session_id => session1.id, :user_id => user.id)
    getAvailableRooms = RecordingSession.query_record_session(date)
    expect(getAvailableRooms).to_not include([session1, session2])
    expect(getAvailableRooms).to include(session3)     
  end
end
