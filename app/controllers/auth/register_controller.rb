class Auth::RegisterController < ApplicationController
  before_action :authenticate_user!   
  def new
    @user = User.new
  end

  def store
    @user = User.new(user_params)
    if @user.save
      if @user && @user.authenticate(params[:user][:password])
        reset_session
        session[:current_user_id] = @user.id
        redirect_to rails_health_check_path, notice: "Signed in."
      else
        flash.now[:alert] = "Incorrect email or password."
        render login_path, notice: "Please login"
      end
    end
  end

  private

  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end
end
