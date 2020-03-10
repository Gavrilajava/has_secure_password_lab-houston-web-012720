class WelcomeController < ApplicationController

  def show
    if !session[:user_id]
      redirect_to login_path
    end
  end
end
