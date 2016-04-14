require 'rails_helper'

RSpec.describe "users/show", type: :view do
  before(:each) do
    @user = assign(:user, User.create!(
      :band_name => "Band Name",
      :contact_name => "Contact Name",
      :contact_number => "Contact Number"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Band Name/)
    expect(rendered).to match(/Contact Name/)
    expect(rendered).to match(/Contact Number/)
  end
end
