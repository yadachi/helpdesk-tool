json.array!(@customers) do |customer|
  json.extract! customer, :id, :title, :name, :direct_number, :email, :company_id, :location_id, :main_contact
  json.url customer_url(customer, format: :json)
end
