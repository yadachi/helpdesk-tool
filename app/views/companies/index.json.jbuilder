json.array!(@companies) do |company|
  json.extract! company, :id, :name, :location_id, :main_phone, :deleted
  json.url company_url(company, format: :json)
end
