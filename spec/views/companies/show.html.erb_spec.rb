require 'rails_helper'

RSpec.describe "companies/show", type: :view do
  before(:each) do
    @company = assign(:company, Company.create!(
      :name => "Name",
      :entity_number => "Entity Number",
      :address_1 => "Address 1",
      :address_2 => "Address 2",
      :city => "City",
      :state => nil,
      :zip => "Zip",
      :business_structure => "Business Structure",
      :year_established => 1,
      :number_of_employees => 2,
      :last_year_sales => "9.99",
      :counties => "MyText",
      :general_liability_insurance_amount => "9.99",
      :contract_dollars_level_interest_min => "9.99",
      :contract_dollars_level_interest_max => "9.99",
      :nature_of_business => "MyText",
      :is_union_contractor => false,
      :bonding_capacity => "Bonding Capacity",
      :type_of_construction => "Type Of Construction"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Entity Number/)
    expect(rendered).to match(/Address 1/)
    expect(rendered).to match(/Address 2/)
    expect(rendered).to match(/City/)
    expect(rendered).to match(//)
    expect(rendered).to match(/Zip/)
    expect(rendered).to match(/Business Structure/)
    expect(rendered).to match(/1/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/Bonding Capacity/)
    expect(rendered).to match(/Type Of Construction/)
  end
end
