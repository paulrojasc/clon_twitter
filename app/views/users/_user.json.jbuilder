json.extract! user, :id, :description, :username, :created_at, :updated_at
json.url user_url(user, format: :json)
