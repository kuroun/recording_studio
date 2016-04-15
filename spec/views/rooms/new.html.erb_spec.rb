require 'rails_helper'

RSpec.describe "rooms/new", type: :view do
  before(:each) do
    assign(:room, Room.new(
      :room_name => "MyString",
      :status => "MyString",
      :description => "MyString"
    ))
  end

  it "renders new room form" do
    render

    assert_select "form[action=?][method=?]", rooms_path, "post" do

      assert_select "input#room_room_name[name=?]", "room[room_name]"

      assert_select "input#room_status[name=?]", "room[status]"

      assert_select "input#room_description[name=?]", "room[description]"
    end
  end
end
