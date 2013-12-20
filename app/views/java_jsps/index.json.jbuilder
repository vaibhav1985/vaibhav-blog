json.array!(@java_jsps) do |java_jsp|
  json.extract! java_jsp, :id
  json.url java_jsp_url(java_jsp, format: :json)
end
