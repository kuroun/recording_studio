require 'rails_helper'

RSpec.describe "RecordingSessions", type: :request do
  describe "GET /recording_sessions" do
    it "works! (now write some real specs)" do
      get recording_sessions_path
      expect(response).to have_http_status(200)
    end
  end
end
