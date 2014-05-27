class RegistrationsController < Devise::RegistrationsController
  before_filter :configure_permitted_parameters

  protected

  def after_update_path_for(resource)
    edit_user_registration_url
  end

  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:account_update) \
      << :first_name << :last_name
  end

  def update_resource(resource, params)
    resource.update_without_password(params)
  end
end
