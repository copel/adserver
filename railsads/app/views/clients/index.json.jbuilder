json.array!(@clients) do |client|
  json.extract! client, :client_type, :client_name, :contact, :email, :report, :report_interval, :report_deactive, :comment
  json.url client_url(client, format: :json)
end
