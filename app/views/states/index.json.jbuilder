json.array!(@states) do |state|
  json.extract! state, :id, :name, :region, :acronym
  json.url state_url(state, format: :json)
end
