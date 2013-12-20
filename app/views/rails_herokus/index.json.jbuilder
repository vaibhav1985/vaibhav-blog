json.array!(@rails_herokus) do |rails_heroku|
  json.extract! rails_heroku, :id
  json.url rails_heroku_url(rails_heroku, format: :json)
end
