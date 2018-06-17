class ApplicationController < ActionController::Base
    def check_session
      if !logged_in?
        redirect_to login_url
      end
    end

    private
    def logged_in?
        !session[:user_id].nil?
    end
end
