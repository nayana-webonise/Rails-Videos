class SessionsController < ApplicationController
  def new

  end

  def create
    auth_user=AuthUser.find_by_email(params[:email])
    if auth_user && auth_user.authenticate(params[:password])
      session[:auth_user_id]=auth_user.id
      redirect_to projects_path, :notice => "Logged in!"
    else
      flash.now.alert= "Invalid email or password"
      render 'new'
    end
  end

  def destroy
    session[:auth_user_id]=nil
    redirect_to demo_path, :notice => "Logged out!"
  end
end
