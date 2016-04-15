require 'rails_helper'

RSpec.describe "rooms/show", type: :view do
  before(:each) do
    @room = assign(:room, Room.create!(
      :room_name => "Room Name",
      :status => "Status",
      :description => "Description"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Room Name/)
    expect(rendered).to match(/Status/)
    expect(rendered).to match(/Description/)
  end
end
