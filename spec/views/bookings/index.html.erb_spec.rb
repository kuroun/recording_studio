require 'rails_helper'

RSpec.describe "bookings/index", type: :view do
  before(:each) do
    assign(:bookings, [
      Booking.create!(
        :reference => "",
        :reference => "",
        :comment => "Comment"
      ),
      Booking.create!(
        :reference => "",
        :reference => "",
        :comment => "Comment"
      )
    ])
  end

  it "renders a list of bookings" do
    render
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "Comment".to_s, :count => 2
  end
end
