class SessionsController < ApplicationController
  def create
    user = User.from_omniauth(env["omniauth.auth"])
    session[:user_id] = user.id
    redirect_to "/index/index"
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_path
  end
  
  def user_params
    params.require(:user).permit(:provider, :uid, :name, :first_name, :last_name, :image, :oauth_token, :oauth_expires_at)
  end
end
