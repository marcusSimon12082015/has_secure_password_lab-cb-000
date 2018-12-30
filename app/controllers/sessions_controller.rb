class SessionsController < ApplicationController
  def create
    if params[:user][:password] && !params[:user][:name].empty? && 
      !User.find_by(name:params[:user][:name]).nil?
      @user = User.find_by(name:params[:user][:name])
      if !@user.authenticate(params[:user][:password]).nil?
        session[:user_id] = @user.id
      end
    end
  end
end
