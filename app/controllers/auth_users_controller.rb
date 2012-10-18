class AuthUsersController < ApplicationController
  def new
    @auth_user=AuthUser.new
  end

  def create
    @auth_user=AuthUser.new(params[:auth_users])
    if @auth_user.save
      redirect_to projects_path, :notice => "Signed In"
    else
      render 'new'
    end

  end
end
