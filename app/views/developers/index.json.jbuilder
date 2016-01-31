json.array!(@developers) do |developer|
  json.extract! developer, :id, :name, :description, :logo_url
  json.url developer_url(developer, format: :json)
end
