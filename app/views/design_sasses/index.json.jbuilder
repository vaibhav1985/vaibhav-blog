json.array!(@design_sasses) do |design_sass|
  json.extract! design_sass, :id
  json.url design_sass_url(design_sass, format: :json)
end
