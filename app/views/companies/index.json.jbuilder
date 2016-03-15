json.array!(@companies) do |company|
  json.extract! company, :id, :name, :entity_number, :address_1, :address_2, :city, :state_id, :zip, :business_structure, :year_established, :number_of_employees, :last_year_sales, :counties, :general_liability_insurance_amount, :contract_dollars_level_interest_min, :contract_dollars_level_interest_max, :nature_of_business, :is_union_contractor, :bonding_capacity, :type_of_construction
  json.url company_url(company, format: :json)
end
