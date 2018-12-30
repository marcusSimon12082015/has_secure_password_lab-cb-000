class UsersController < ApplicationController
  def create
  end

  def new
  end

  private

  def user_params
    params.require(:user).permit(:name,:password,:password_confirmation)
  end
end
