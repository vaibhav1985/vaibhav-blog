json.array!(@tritia) do |tritium|
  json.extract! tritium, :id
  json.url tritium_url(tritium, format: :json)
end
