require "rails_helper"

RSpec.describe RecordingSessionsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/recording_sessions").to route_to("recording_sessions#index")
    end

    it "routes to #new" do
      expect(:get => "/recording_sessions/new").to route_to("recording_sessions#new")
    end

    it "routes to #show" do
      expect(:get => "/recording_sessions/1").to route_to("recording_sessions#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/recording_sessions/1/edit").to route_to("recording_sessions#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/recording_sessions").to route_to("recording_sessions#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/recording_sessions/1").to route_to("recording_sessions#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/recording_sessions/1").to route_to("recording_sessions#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/recording_sessions/1").to route_to("recording_sessions#destroy", :id => "1")
    end

  end
end
