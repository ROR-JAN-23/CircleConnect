class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?
  before_action :set_locale
  private
def set_locale
  I18n.locale = extract_locale || I18n.default_locale
end
def extract_locale
  parsed_locale = params[:locale]
  I18n.available_locales.map(&:to_s).include?(parsed_locale) ? parsed_locale : nil
end

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up,
                                      keys: %i[email first_name last_name user_name password password_configuration])
    devise_parameter_sanitizer.permit(:account_update,
                                      keys: %i[email first_name last_name user_name password password_configuration
                                               current_password])
  end
  private
def default_url_options
  { locale: I18n.locale }
end
end
