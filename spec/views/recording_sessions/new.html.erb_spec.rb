require 'rails_helper'

RSpec.describe "recording_sessions/new", type: :view do
  before(:each) do
    assign(:recording_session, RecordingSession.new(
      :description => "MyString"
    ))
  end

  it "renders new recording_session form" do
    render

    assert_select "form[action=?][method=?]", recording_sessions_path, "post" do

      assert_select "input#recording_session_description[name=?]", "recording_session[description]"
    end
  end
end
