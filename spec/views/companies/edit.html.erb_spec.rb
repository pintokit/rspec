require 'rails_helper'

RSpec.describe "companies/edit", type: :view do
  before(:each) do
    @company = assign(:company, Company.create!(
      :name => "MyString",
      :address_1 => "MyString",
      :address_2 => "MyString",
      :city => "MyString",
      :state => nil,
      :zip => "MyString",
      :business_structure => "MyString",
      :year_established => 1,
      :number_of_employees => 1,
      :last_year_sales => "9.99",
      :counties => "MyText",
      :general_liability_insurance_amount => "9.99",
      :contract_dollars_level_interest_min => "9.99",
      :contract_dollars_level_interest_max => "9.99",
      :nature_of_business => "MyText",
      :is_union_contractor => false,
      :bonding_capacity => "MyString",
      :type_of_construction => "MyString"
    ))
  end

  it "renders the edit company form" do
    render

    assert_select "form[action=?][method=?]", company_path(@company), "post" do

      assert_select "input#company_name[name=?]", "company[name]"

      assert_select "input#company_address_1[name=?]", "company[address_1]"

      assert_select "input#company_address_2[name=?]", "company[address_2]"

      assert_select "input#company_city[name=?]", "company[city]"

      assert_select "input#company_state_id[name=?]", "company[state_id]"

      assert_select "input#company_zip[name=?]", "company[zip]"

      assert_select "input#company_business_structure[name=?]", "company[business_structure]"

      assert_select "input#company_year_established[name=?]", "company[year_established]"

      assert_select "input#company_number_of_employees[name=?]", "company[number_of_employees]"

      assert_select "input#company_last_year_sales[name=?]", "company[last_year_sales]"

      assert_select "textarea#company_counties[name=?]", "company[counties]"

      assert_select "input#company_general_liability_insurance_amount[name=?]", "company[general_liability_insurance_amount]"

      assert_select "input#company_contract_dollars_level_interest_min[name=?]", "company[contract_dollars_level_interest_min]"

      assert_select "input#company_contract_dollars_level_interest_max[name=?]", "company[contract_dollars_level_interest_max]"

      assert_select "textarea#company_nature_of_business[name=?]", "company[nature_of_business]"

      assert_select "input#company_is_union_contractor[name=?]", "company[is_union_contractor]"

      assert_select "input#company_bonding_capacity[name=?]", "company[bonding_capacity]"

      assert_select "input#company_type_of_construction[name=?]", "company[type_of_construction]"
    end
  end
end
