json.array!(@users) do |user|
  json.extract! user, :id, :userid, :password_digest, :name, :level, :accountlockflg, :delflg
  json.url user_url(user, format: :json)
end
