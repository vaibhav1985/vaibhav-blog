json.array!(@xpaths) do |xpath|
  json.extract! xpath, :id
  json.url xpath_url(xpath, format: :json)
end
