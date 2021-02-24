class RegistrationsController < Devise::RegistrationsController
 load_and_authorize_resource
 protected
 def after_inactive_sign_up_path_for(resource)
   home_index_path# Or :prefix_to_your_route
 end
 private
  def sign_up_params
    params.require(:user).permit(:first_name, :last_name, :gender, :DOB, :mobile_number, :email, :password, :password_confirmation)
  end

  def account_update_params
    params.require(:user).permit(:first_name, :last_name, :gender, :DOB, :email, :mobile_number, :password, :password_confirmation, :current_password)
  end

end
