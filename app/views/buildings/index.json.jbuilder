json.array!(@buildings) do |building|
  json.extract! building, :id, :developer_id, :name, :description
  json.url building_url(building, format: :json)
end
