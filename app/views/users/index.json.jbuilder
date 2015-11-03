json.array!(@users) do |user|
  json.extract! user, :id, :email, :name, :phone_number, :description, :zip_code, :password_digest
  json.url user_url(user, format: :json)
end
