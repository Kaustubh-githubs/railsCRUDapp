json.extract! user_profile, :id, :first_name, :last_name, :email, :phone_no, :title, :password, :profile_pic_url, :created_at, :updated_at
json.url user_profile_url(user_profile, format: :json)
