class User::ParameterSanitizer < Devise::ParameterSanitizer

  def sign_up
    default_params.permit(:email, :password, :first_name, :last_name, :gender, :date_of_birth, :postal_code, :country)
  end
  
  def account_update
    default_params.permit(:email, :password, :password_confirmation, :current_password, :postal_code, :country)
  end
end