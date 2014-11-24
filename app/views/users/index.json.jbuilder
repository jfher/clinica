json.array!(@users) do |user|
  json.extract! user, :id, :cuenta, :nombre, :password, :password_confirmation, :password_digest
  json.url user_url(user, format: :json)
end
