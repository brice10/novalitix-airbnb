class ApplicationController < ActionController::Base

    private

    def authenticate_user!
        if current_user
            redirect_to root_path
        end
    end

    def un_authenticate_user!
        if !current_user
            redirect_to login_path
        end
    end

    def current_user
        Current.user ||= auth_user_from_session
    end
    helper_method :current_user

    def auth_user_from_session
        User.find_by(id: session[:current_user_id])
    end

    def user_signed_in?
        current_user.present?
    end
    helper_method :user_signed_in?
    
end
