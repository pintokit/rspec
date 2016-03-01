json.array!(@opportunities) do |opportunity|
  json.extract! opportunity, :id, :client_id, :project_name, :contact_name, :contact_phone, :contact_fax, :contact_email, :bid_date, :trades_solicited, :instructions
  json.url opportunity_url(opportunity, format: :json)
end
