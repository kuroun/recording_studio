require 'rails_helper'

RSpec.describe "users/new", type: :view do
  before(:each) do
    assign(:user, User.new(
      :band_name => "MyString",
      :contact_name => "MyString",
      :contact_number => "MyString"
    ))
  end

  it "renders new user form" do
    render

    assert_select "form[action=?][method=?]", users_path, "post" do

      assert_select "input#user_band_name[name=?]", "user[band_name]"

      assert_select "input#user_contact_name[name=?]", "user[contact_name]"

      assert_select "input#user_contact_number[name=?]", "user[contact_number]"
    end
  end
end
