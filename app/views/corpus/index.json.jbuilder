json.array!(@corpus) do |corpu|
  json.extract! corpu, :id, :name, :description, :end_date_build, :building_id
  json.url corpu_url(corpu, format: :json)
end
