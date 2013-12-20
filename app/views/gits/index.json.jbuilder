json.array!(@gits) do |git|
  json.extract! git, :id
  json.url git_url(git, format: :json)
end
