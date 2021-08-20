class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:fullname])
  end

  def logged_in_user  
		unless logged_in?  #if not login
			flash[:danger] = "Please login first"
			redirect_to login_url
		end
	end
end
