json.array!(@offer_categories) do |offer_category|
  json.extract! offer_category, :id, :name, :offer_id
  json.url offer_category_url(offer_category, format: :json)
end
