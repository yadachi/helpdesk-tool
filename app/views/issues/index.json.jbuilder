json.array!(@issues) do |issue|
  json.extract! issue, :company_name, :summary, :received_date, :due_date, :status, :issue_type, :assigned_to
  json.url issue_url(issue, format: :json)
end
