class Auth::LoginController < ApplicationController
  before_action :authenticate_user!   
  def new
  end

  def login
    @user = User.find_by(email: params[:user][:email].downcase)
    if @user && @user.authenticate(params[:user][:password])
      reset_session
      session[:current_user_id] = @user.id
      redirect_to rails_health_check_path, notice: "Signed in."
    else
      flash.now[:alert] = "Incorrect email or password."
      render :new, status: :unprocessable_entity
    end
  end
  
  def logout
    Current.user = nil
    reset_session
  end
end
