json.array!(@bids) do |bid|
  json.extract! bid, :id, :opportunity_id, :is_interested, :is_unsure, :company_id, :reason_unsure, :need_assistance_1, :need_assistance_2, :able_to_complete, :decline_reasons, :contacted, :employee_notes
  json.url bid_url(bid, format: :json)
end
