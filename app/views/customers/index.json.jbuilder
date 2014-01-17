json.array!(@customers) do |customer|
  json.extract! customer, :id, :title, :name, :direct_number, :email
  json.url customer_url(customer, format: :json)
end
