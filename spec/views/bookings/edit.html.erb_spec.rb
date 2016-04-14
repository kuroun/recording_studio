require 'rails_helper'

RSpec.describe "bookings/edit", type: :view do
  before(:each) do
    @booking = assign(:booking, Booking.create!(
      :reference => "",
      :reference => "",
      :comment => "MyString"
    ))
  end

  it "renders the edit booking form" do
    render

    assert_select "form[action=?][method=?]", booking_path(@booking), "post" do

      assert_select "input#booking_reference[name=?]", "booking[reference]"

      assert_select "input#booking_reference[name=?]", "booking[reference]"

      assert_select "input#booking_comment[name=?]", "booking[comment]"
    end
  end
end
