require 'rails_helper'

RSpec.describe "users/new", type: :view do
  before(:each) do
    assign(:user, User.new(
      :company => nil,
      :first_name => "MyString",
      :last_name => "MyString",
      :title => "MyString",
      :address_1 => "MyString",
      :address_2 => "MyString",
      :city => "MyString",
      :state => nil,
      :zip => "MyString",
      :mobile_number => 1,
      :office_number => 1,
      :extension => "MyString",
      :fax_number => 1,
      :gender => "MyString",
      :ethnicity => "MyString",
      :veteran_status => "MyString"
    ))
  end

  it "renders new user form" do
    render

    assert_select "form[action=?][method=?]", users_path, "post" do

      assert_select "input#user_company_id[name=?]", "user[company_id]"

      assert_select "input#user_first_name[name=?]", "user[first_name]"

      assert_select "input#user_last_name[name=?]", "user[last_name]"

      assert_select "input#user_title[name=?]", "user[title]"

      assert_select "input#user_address_1[name=?]", "user[address_1]"

      assert_select "input#user_address_2[name=?]", "user[address_2]"

      assert_select "input#user_city[name=?]", "user[city]"

      assert_select "input#user_state_id[name=?]", "user[state_id]"

      assert_select "input#user_zip[name=?]", "user[zip]"

      assert_select "input#user_mobile_number[name=?]", "user[mobile_number]"

      assert_select "input#user_office_number[name=?]", "user[office_number]"

      assert_select "input#user_extension[name=?]", "user[extension]"

      assert_select "input#user_fax_number[name=?]", "user[fax_number]"

      assert_select "input#user_gender[name=?]", "user[gender]"

      assert_select "input#user_ethnicity[name=?]", "user[ethnicity]"

      assert_select "input#user_veteran_status[name=?]", "user[veteran_status]"
    end
  end
end
