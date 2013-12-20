json.array!(@ubuntus) do |ubuntu|
  json.extract! ubuntu, :id
  json.url ubuntu_url(ubuntu, format: :json)
end
