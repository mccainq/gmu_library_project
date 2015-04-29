json.array!(@users) do |user|
  json.extract! user, :id, :name, :user_id, :password_digest, :admin, :created_at, :updated_at
  json.url user_url(user, format: :json)
end
