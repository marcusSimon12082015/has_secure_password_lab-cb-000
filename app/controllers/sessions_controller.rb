class SessionsController < ApplicationController
  def create
    @user = User.find_by(name:params[:user][:name])
    if @user.authenticate(params[:user][:password]).nil?

    else
      session[:user_id] = @user.id
    end 
  end
end
