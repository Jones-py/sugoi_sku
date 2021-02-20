class ApplicationController < ActionController::Base
  before_action :authenticate_user!

  def after_sign_in_path_for(resource)
    root_path
  end
  # before_action :configure_permitted_parameters, if: :devise_controller?
  #
  # def configure_permitted_parameters
  #   devise_parameter_sanitizer.permit(:sign_up, keys: %i[:name,:gender, :DOB])
  #   devise_parameter_sanitizer.permit(:account_update, keys: %i[:name,:gender, :DOB])
  # end
end
