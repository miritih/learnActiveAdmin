class SessionsController < ApplicationController
  def create
    # # begin
    # user = User.from_omniauth(env["omniauth.auth"])
    # render :json  => user
    # # rescue NoMethodError 
    #   # render :text  => "not a valid domain"
    # # end
    user = User.from_omniauth(env["omniauth.auth"])
    if user.save
    render :json  => env["omniauth.auth"]
    else
      render :text  => "not a valid domain"
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_path
  end
end
