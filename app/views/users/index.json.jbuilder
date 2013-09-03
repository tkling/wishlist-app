json.array!(@users) do |user|
  json.extract! user, :first_name, :last_name, :email_address, :birthday
  json.url user_url(user, format: :json)
end
