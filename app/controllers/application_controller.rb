class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  layout :layout_by_resource

  protected

  def layout_by_resource
    if devise_controller? && resource_name == :user
      "users"
    elsif devise_controller? && resource_name == :admin
      "admins"
    else
      "application"
    end
  end

  def devise_parameter_sanitizer
    if resource_class == User
      User::ParameterSanitizer.new(User, :user, params)
    elsif resource_class == Admin
      Admin::ParameterSanitizer.new(Admin, :admin, params)
    else
      super # Use the default one
    end
  end
  
  def after_sign_out_path_for(resource_or_scope)
    if resource_or_scope == :admin
      return dashboards_path
    elsif resource_or_scope == :user
      return homepages_path
    end
    
  end
  
end
