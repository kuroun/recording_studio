require 'rails_helper'

RSpec.describe "recording_sessions/show", type: :view do
  before(:each) do
    @recording_session = assign(:recording_session, RecordingSession.create!(
      :description => "Description"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Description/)
  end
end
