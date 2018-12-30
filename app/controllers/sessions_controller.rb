class SessionsController < ApplicationController
  def create
    byebug
    @user = User.find_by(name:params[:user][:name])
    @user.authenticate(params[:user][:password])
    session[:user_id] = @user.id
  end
end
