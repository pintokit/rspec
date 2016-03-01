json.array!(@bids) do |bid|
  json.extract! bid, :id, :opportunity_id, :is_interested, :is_unsure, :company_id, :able_to_complete, :no_bid_reasons, :need_assistance
  json.url bid_url(bid, format: :json)
end
