json.extract! user, :id, :u_name, :f_name, :l_name, :email, :password_hash, :created_at, :updated_at
json.url user_url(user, format: :json)
