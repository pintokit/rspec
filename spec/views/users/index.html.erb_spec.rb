require 'rails_helper'

RSpec.describe "users/index", type: :view do
  before(:each) do
    assign(:users, [
      User.create!(
        :company => nil,
        :first_name => "First Name",
        :last_name => "Last Name",
        :title => "Title",
        :address_1 => "Address 1",
        :address_2 => "Address 2",
        :city => "City",
        :state => nil,
        :zip => "Zip",
        :mobile_number => 1,
        :office_number => 2,
        :extension => "Extension",
        :fax_number => 3,
        :gender => "Gender",
        :ethnicity => "Ethnicity",
        :veteran_status => "Veteran Status"
      ),
      User.create!(
        :company => nil,
        :first_name => "First Name",
        :last_name => "Last Name",
        :title => "Title",
        :address_1 => "Address 1",
        :address_2 => "Address 2",
        :city => "City",
        :state => nil,
        :zip => "Zip",
        :mobile_number => 1,
        :office_number => 2,
        :extension => "Extension",
        :fax_number => 3,
        :gender => "Gender",
        :ethnicity => "Ethnicity",
        :veteran_status => "Veteran Status"
      )
    ])
  end

  it "renders a list of users" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "First Name".to_s, :count => 2
    assert_select "tr>td", :text => "Last Name".to_s, :count => 2
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "Address 1".to_s, :count => 2
    assert_select "tr>td", :text => "Address 2".to_s, :count => 2
    assert_select "tr>td", :text => "City".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "Zip".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "Extension".to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => "Gender".to_s, :count => 2
    assert_select "tr>td", :text => "Ethnicity".to_s, :count => 2
    assert_select "tr>td", :text => "Veteran Status".to_s, :count => 2
  end
end
