json.array!(@b_queues) do |b_queue|
  json.extract! b_queue, :id, :name, :description, :end_date_build, :building_id
  json.url b_queue_url(b_queue, format: :json)
end
