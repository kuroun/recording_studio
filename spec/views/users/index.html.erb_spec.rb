require 'rails_helper'

RSpec.describe "users/index", type: :view do
  before(:each) do
    assign(:users, [
      User.create!(
        :band_name => "Band Name",
        :contact_name => "Contact Name",
        :contact_number => "Contact Number"
      ),
      User.create!(
        :band_name => "Band Name",
        :contact_name => "Contact Name",
        :contact_number => "Contact Number"
      )
    ])
  end

  it "renders a list of users" do
    render
    assert_select "tr>td", :text => "Band Name".to_s, :count => 2
    assert_select "tr>td", :text => "Contact Name".to_s, :count => 2
    assert_select "tr>td", :text => "Contact Number".to_s, :count => 2
  end
end
