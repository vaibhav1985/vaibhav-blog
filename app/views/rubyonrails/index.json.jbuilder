json.array!(@rubyonrails) do |rubyonrail|
  json.extract! rubyonrail, :id
  json.url rubyonrail_url(rubyonrail, format: :json)
end
