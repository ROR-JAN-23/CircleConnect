class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up,
                                      keys: %i[email first_name last_name user_name password password_configuration])
    devise_parameter_sanitizer.permit(:account_update,
                                      keys: %i[email first_name last_name user_name password password_configuration])
    end
end
