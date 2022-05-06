class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :configure_permitted_parameters, if: :devise_controller?

  
  private
  def configure_permitted_parameters
    if resource_class == User
      devise_parameter_sanitizer.permit(:sign_up, keys: [:nickname, :email, :password, :last_name, :first_name, :birthday ])
      devise_parameter_sanitizer.permit(:sign_in, keys: [:email])
      devise_parameter_sanitizer.permit(:account_update, keys: %i[name email image])
    end
  end
end
