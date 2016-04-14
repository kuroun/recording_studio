require 'rails_helper'

RSpec.describe "recording_sessions/edit", type: :view do
  before(:each) do
    @recording_session = assign(:recording_session, RecordingSession.create!(
      :description => "MyString"
    ))
  end

  it "renders the edit recording_session form" do
    render

    assert_select "form[action=?][method=?]", recording_session_path(@recording_session), "post" do

      assert_select "input#recording_session_description[name=?]", "recording_session[description]"
    end
  end
end
