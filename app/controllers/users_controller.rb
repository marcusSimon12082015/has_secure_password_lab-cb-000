class UsersController < ApplicationController
  def create
    if !(params[:password].eql? params[:password_confirmation])
      redirect_to(controller:'users',action:'new')
    end
    User.create(user_params)
  end

  def new
  end

  private

  def user_params
    params.require(:user).permit(:name,:password,:password_confirmation)
  end
end
