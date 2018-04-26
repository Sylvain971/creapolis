class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:firstname, :name, :pseudo, :city, :profile_picture])
    devise_parameter_sanitizer.permit(:account_update, keys: [:firstname, :name, :pseudo, :city, :profile_picture])
  end

  def default_url_options
  { host: ENV['HOST'] || 'localhost:3000' }
	end

end
