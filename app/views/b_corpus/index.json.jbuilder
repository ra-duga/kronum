json.array!(@b_corpus) do |b_corpu|
  json.extract! b_corpu, :id, :name, :description, :end_date_build, :b_queues_id
  json.url b_corpu_url(b_corpu, format: :json)
end
