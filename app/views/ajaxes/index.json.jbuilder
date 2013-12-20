json.array!(@ajaxes) do |ajax|
  json.extract! ajax, :id
  json.url ajax_url(ajax, format: :json)
end
