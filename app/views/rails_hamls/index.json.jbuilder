json.array!(@rails_hamls) do |rails_haml|
  json.extract! rails_haml, :id
  json.url rails_haml_url(rails_haml, format: :json)
end
