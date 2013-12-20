json.array!(@others) do |other|
  json.extract! other, :id
  json.url other_url(other, format: :json)
end
