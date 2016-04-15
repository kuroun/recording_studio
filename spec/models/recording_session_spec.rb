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
end
