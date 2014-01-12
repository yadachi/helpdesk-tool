json.array!(@issues) do |issue|
  json.extract! issue, :company_id, :summary, :received_date, :due_date, :status, :support_type, :assigned_to
  json.url issue_url(issue, format: :json)
end
