require 'rails_helper'

RSpec.describe "rooms/index", type: :view do
  before(:each) do
    assign(:rooms, [
      Room.create!(
        :room_name => "Room Name",
        :status => "Status",
        :description => "Description"
      ),
      Room.create!(
        :room_name => "Room Name",
        :status => "Status",
        :description => "Description"
      )
    ])
  end

  it "renders a list of rooms" do
    render
    assert_select "tr>td", :text => "Room Name".to_s, :count => 2
    assert_select "tr>td", :text => "Status".to_s, :count => 2
    assert_select "tr>td", :text => "Description".to_s, :count => 2
  end
end
