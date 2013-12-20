json.array!(@rubies) do |ruby|
  json.extract! ruby, :id
  json.url ruby_url(ruby, format: :json)
end
