json.array!(@opportunities) do |opportunity|
  json.extract! opportunity, :id, :client_id, :project_name, :project_owner, :union_contract, :city, :state_id, :contact_name, :contact_phone, :contact_fax, :contact_email, :bid_date, :trades_solicited, :project_description, :bid_instructions, :project_url
  json.url opportunity_url(opportunity, format: :json)
end
