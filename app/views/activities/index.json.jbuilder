json.array!(@activities) do |activity|
  json.extract! activity, :id, :issue_id, :date_time, :activity_type, :activity_note, :hours, :minutes, :entered_by
  json.url activity_url(activity, format: :json)
end
