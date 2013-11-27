json.array!(@issues) do |issue|
  json.extract! issue, :companyname, :summary, :receiveddate, :duedate, :status, :supporttype, :assignedto
  json.url issue_url(issue, format: :json)
end
