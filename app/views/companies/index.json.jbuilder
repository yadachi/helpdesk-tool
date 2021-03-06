json.array!(@companies) do |company|
  json.extract! company, :id, :name, :telephone, :is_deleted
  json.url company_url(company, format: :json)
end
