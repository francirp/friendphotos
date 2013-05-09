class SessionsController < ApplicationController

def create
  user = User.from_omniauth(env["omniauth.auth"])
  session[:user_id] = user.id
  redirect_to friends_url, :notice => "You successfully logged in, #{current_user.first_name}!"
end

def destroy
  session[:user_id] = nil
  redirect_to root_path, :notice => "You have been successfully logged out."
end

end
