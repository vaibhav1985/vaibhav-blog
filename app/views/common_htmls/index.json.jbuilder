json.array!(@common_htmls) do |common_html|
  json.extract! common_html, :id
  json.url common_html_url(common_html, format: :json)
end
