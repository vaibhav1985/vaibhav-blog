json.array!(@database_mysqls) do |database_mysql|
  json.extract! database_mysql, :id
  json.url database_mysql_url(database_mysql, format: :json)
end
