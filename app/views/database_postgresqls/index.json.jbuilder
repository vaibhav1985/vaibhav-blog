json.array!(@database_postgresqls) do |database_postgresql|
  json.extract! database_postgresql, :id
  json.url database_postgresql_url(database_postgresql, format: :json)
end
