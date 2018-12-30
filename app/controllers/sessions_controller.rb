class SessionsController < ApplicationController
  def create
    @user = User.find_by(name:params[:name])
    if params[:password] != params[:password_confirmation]
      redirect_to(controller:'users',action:'new')
    end
    @user.authenticate(params[:password])
    session[:user_id] = @user.id
  end
end
