class SessionsController < ApplicationController
  def create
    byebug
    @user = User.find_by(name:params[:name])
    @user.authenticate(params[:password])
    session[:user_id] = @user.id
  end
end
