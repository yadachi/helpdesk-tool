json.array!(@companies) do |company|
<<<<<<< HEAD
  json.extract! company, :id, :name, :address, :phone, :fax
=======
  json.extract! company, :id, :name, :address, :telno, :delflg
>>>>>>> remotes/team_mak/helpdesk/master
  json.url company_url(company, format: :json)
end
