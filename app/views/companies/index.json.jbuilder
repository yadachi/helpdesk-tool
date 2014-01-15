json.array!(@companies) do |company|
  json.extract! company, :id, :name, :address, :telno, :delflg
  json.url company_url(company, format: :json)
end
