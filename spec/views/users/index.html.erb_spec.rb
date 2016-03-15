require 'rails_helper'

RSpec.describe "users/index", type: :view do
  before(:each) do
    @company_1 = Company.new(id: 1)
    @company_2 = Company.new(id: 2)
    assign(:users, [
      User.create!(
        :company => @company_1,
        :first_name => "First Name",
        :last_name => "Last Name",
        :title => "Title",
        :address_1 => "Address 1",
        :address_2 => "Address 2",
        :city => "City",
        :state => nil,
        :zip => "Zip",
        :mobile_number => 3,
        :office_number => 4,
        :extension => 5,
        :fax_number => 6,
        :gender => "Gender",
        :ethnicity => "Ethnicity",
        :veteran_status => "Veteran Status"
      ),
      User.create!(
        :company => @company_2,
        :first_name => "First Name",
        :last_name => "Last Name",
        :title => "Title",
        :address_1 => "Address 1",
        :address_2 => "Address 2",
        :city => "City",
        :state => nil,
        :zip => "Zip",
        :mobile_number => 3,
        :office_number => 4,
        :extension => 5,
        :fax_number => 6,
        :gender => "Gender",
        :ethnicity => "Ethnicity",
        :veteran_status => "Veteran Status"
      )
    ])
  end

  it "renders a list of users" do
    render
    assert_select "tr>td", :text => @company_1.to_s, :count => 1
    assert_select "tr>td", :text => @company_2.to_s, :count => 1
    assert_select "tr>td", :text => "First Name".to_s, :count => 2
    assert_select "tr>td", :text => "Last Name".to_s, :count => 2
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "Address 1".to_s, :count => 2
    assert_select "tr>td", :text => "Address 2".to_s, :count => 2
    assert_select "tr>td", :text => "City".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "Zip".to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => 4.to_s, :count => 2
    assert_select "tr>td", :text => 5.to_s, :count => 2
    assert_select "tr>td", :text => 6.to_s, :count => 2
    assert_select "tr>td", :text => "Gender".to_s, :count => 2
    assert_select "tr>td", :text => "Ethnicity".to_s, :count => 2
    assert_select "tr>td", :text => "Veteran Status".to_s, :count => 2
  end
end
