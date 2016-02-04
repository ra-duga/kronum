json.array!(@agents) do |agent|
  json.extract! agent, :id, :name, :low_name, :adress, :phone
  json.url agent_url(agent, format: :json)
end
