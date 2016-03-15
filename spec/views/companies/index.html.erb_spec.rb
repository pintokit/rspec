require 'rails_helper'

RSpec.describe "companies/index", type: :view do
  before(:each) do
    assign(:companies, [
      Company.create!(
        :name => "Small Business 1",
        :entity_number => 1,
        :address_1 => "Address 1",
        :address_2 => "Address 2",
        :city => "City",
        :state => nil,
        :zip => "Zip",
        :business_structure => "Business Structure",
        :year_established => 2,
        :number_of_employees => 3,
        :last_year_sales => "9.99",
        :counties => "LA County",
        :general_liability_insurance_amount => "9.99",
        :contract_dollars_level_interest_min => "9.99",
        :contract_dollars_level_interest_max => "9.99",
        :nature_of_business => "MyText",
        :is_union_contractor => false,
        :bonding_capacity => "Bonding Capacity",
        :type_of_construction => "Type Of Construction"
      ),
      Company.create!(
        :name => "Small Business 2",
        :entity_number => 4,
        :address_1 => "Address 1",
        :address_2 => "Address 2",
        :city => "City",
        :state => nil,
        :zip => "Zip",
        :business_structure => "Business Structure",
        :year_established => 5,
        :number_of_employees => 6,
        :last_year_sales => "9.99",
        :counties => "Orange County",
        :general_liability_insurance_amount => "9.99",
        :contract_dollars_level_interest_min => "9.99",
        :contract_dollars_level_interest_max => "9.99",
        :nature_of_business => "MyText",
        :is_union_contractor => true,
        :bonding_capacity => "Bonding Capacity",
        :type_of_construction => "Type Of Construction"
      )
    ])
  end

  it "renders a list of companies" do
    render
    assert_select "tr>td", :text => "Small Business 1".to_s, :count => 1
    assert_select "tr>td", :text => 1.to_s, :count => 1
    assert_select "tr>td", :text => "Small Business 2".to_s, :count => 1
    assert_select "tr>td", :text => 2.to_s, :count => 1
    assert_select "tr>td", :text => "Address 1".to_s, :count => 2
    assert_select "tr>td", :text => "Address 2".to_s, :count => 2
    assert_select "tr>td", :text => "City".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "Zip".to_s, :count => 2
    assert_select "tr>td", :text => "Business Structure".to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 1
    assert_select "tr>td", :text => 4.to_s, :count => 1
    assert_select "tr>td", :text => 5.to_s, :count => 1
    assert_select "tr>td", :text => 6.to_s, :count => 1
    assert_select "tr>td", :text => "9.99".to_s, :count => 8
    assert_select "tr>td", :text => "LA County".to_s, :count => 1
    assert_select "tr>td", :text => "Orange County".to_s, :count => 1
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 1
    assert_select "tr>td", :text => true.to_s, :count => 1
    assert_select "tr>td", :text => "Bonding Capacity".to_s, :count => 2
    assert_select "tr>td", :text => "Type Of Construction".to_s, :count => 2
  end
end
