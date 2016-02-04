json.array!(@comissions) do |comission|
  json.extract! comission, :id, :is_episode, :start_epizode, :end_epizode, :value, :comment, :agents_id, :buildings_id
  json.url comission_url(comission, format: :json)
end
