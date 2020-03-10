class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create
    @user = User.create(strong_params)
    if @user.id
      session[:user_id] = @user.id
      redirect_to welcome_path
    else
      redirect_to users_path
    end
  end

  private

  def strong_params
    params.require(:user).permit(:name, :password, :password_confirmation)
  end
end
