require 'rails_helper'

RSpec.describe "rooms/edit", type: :view do
  before(:each) do
    @room = assign(:room, Room.create!(
      :room_name => "MyString",
      :status => "MyString",
      :description => "MyString"
    ))
  end

  it "renders the edit room form" do
    render

    assert_select "form[action=?][method=?]", room_path(@room), "post" do

      assert_select "input#room_room_name[name=?]", "room[room_name]"

      assert_select "input#room_status[name=?]", "room[status]"

      assert_select "input#room_description[name=?]", "room[description]"
    end
  end
end
