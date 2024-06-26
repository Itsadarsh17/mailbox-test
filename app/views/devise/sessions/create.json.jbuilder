json.extract! @user, :id, :email, :created_at, :updated_at if signed_in?
json.message "Signed in successfully." if signed_in?
