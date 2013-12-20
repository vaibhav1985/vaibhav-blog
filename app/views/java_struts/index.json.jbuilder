json.array!(@java_struts) do |java_strut|
  json.extract! java_strut, :id
  json.url java_strut_url(java_strut, format: :json)
end
