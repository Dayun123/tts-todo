class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  # Helper methods are available to controllers and views.
  helper_method :current_user

  private

    def current_user
      @current_user ||= User.find(session[:user_id]) if session[:user_id]
    end

end
