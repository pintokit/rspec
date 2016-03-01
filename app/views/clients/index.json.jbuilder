json.array!(@clients) do |client|
  json.extract! client, :id, :name, :address_1, :address_2, :city, :state_id, :zip
  json.url client_url(client, format: :json)
end
