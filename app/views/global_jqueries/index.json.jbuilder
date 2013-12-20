json.array!(@global_jqueries) do |global_jquery|
  json.extract! global_jquery, :id
  json.url global_jquery_url(global_jquery, format: :json)
end
