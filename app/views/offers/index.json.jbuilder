json.array!(@offers) do |offer|
  json.extract! offer, :id, :name, :text, :start_date, :end_date, :created_by
  json.url offer_url(offer, format: :json)
end
