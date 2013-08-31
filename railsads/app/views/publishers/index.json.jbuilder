json.array!(@publishers) do |publisher|
  json.extract! publisher, :publisher_name, :website, :email, :contact, :publisher_type
  json.url publisher_url(publisher, format: :json)
end
