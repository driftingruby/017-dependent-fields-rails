json.array!(@users) do |user|
  json.extract! user, :id, :first_name, :last_name, :email, :extended_profile, :twitter_handle, :facebook_handle, :github_handle
  json.url user_url(user, format: :json)
end
