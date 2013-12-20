json.array!(@java_hibernates) do |java_hibernate|
  json.extract! java_hibernate, :id
  json.url java_hibernate_url(java_hibernate, format: :json)
end
