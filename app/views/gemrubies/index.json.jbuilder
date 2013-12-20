json.array!(@gemrubies) do |gemruby|
  json.extract! gemruby, :id
  json.url gemruby_url(gemruby, format: :json)
end
