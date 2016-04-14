require 'rails_helper'

RSpec.describe "recording_sessions/index", type: :view do
  before(:each) do
    assign(:recording_sessions, [
      RecordingSession.create!(
        :description => "Description"
      ),
      RecordingSession.create!(
        :description => "Description"
      )
    ])
  end

  it "renders a list of recording_sessions" do
    render
    assert_select "tr>td", :text => "Description".to_s, :count => 2
  end
end
