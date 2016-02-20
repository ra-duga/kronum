json.array!(@offers) do |offer|
<<<<<<< HEAD
  json.extract! offer, :id, :name, :text, :start_date, :end_date, :created_by
=======
  json.extract! offer, :id, :title, :text, :start_date, :and_date, :corpus
>>>>>>> CreateOffers
  json.url offer_url(offer, format: :json)
end
