json.array!(@offers) do |offer|
  json.extract! offer, :id, :title, :text, :start_date, :and_date, :corpus
  json.url offer_url(offer, format: :json)
end
