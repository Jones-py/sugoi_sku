class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :authenticate_user!


  before_action :configure_permitted_parameters, if: :devise_controller?
  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up) { |u| u.permit(:first_name, :last_name, :mobile_number,:email, :password) }
    devise_parameter_sanitizer.permit(:account_update) { |u| u.permit(:first_name, :last_name, :mobile_number, :email, :password, :current_password, :is_female, :date_of_birth) }
  end






  # def configure_permitted_parameters
  #   devise_parameter_sanitizer.permit(:sign_up, keys: %i[:first_name,:last_name,:gender, :DOB,:mobile_number])
  #   devise_parameter_sanitizer.permit(:account_update, keys: %i[:first_name,:last_name,:gender, :DOB, mobile_number])
  # end

  # def after_sign_in_path_for(resource)
  #     root_path
  # end

end
