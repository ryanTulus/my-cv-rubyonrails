class Admin::ParameterSanitizer < Devise::ParameterSanitizer

  def sign_up
    default_params.permit(:email, :password, :first_name, :last_name, :gender, :date_of_birth)
  end
  
  def account_update
    default_params.permit(:email, :password, :password_confirmation, :current_password)
  end
end