class UsersController < ApplicationController
  def create
    if params[:user][:password] == params[:user][:password_confirmation]
      User.create(user_params)
    else
      redirect_to(controller:'users',action:'new')
    end
  end

  def new
  end

  private

  def user_params
    params.require(:user).permit(:name,:password,:password_confirmation)
  end
end
