require 'rails_helper'

RSpec.describe RecordingSession, type: :model do
  #pending "add some examples to (or delete) #{__FILE__}"
  it 'is 2 hour 45 minutes long' do
    session = RecordingSession.create(:start_time => '09:00', :end_time => '12:00' )
    expect(session).to_not be_valid
  end
 
end
