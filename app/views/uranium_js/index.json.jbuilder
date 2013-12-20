json.array!(@uranium_js) do |uranium_j|
  json.extract! uranium_j, :id
  json.url uranium_j_url(uranium_j, format: :json)
end
