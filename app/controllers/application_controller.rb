class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :configure_permitted_parameters, if: :devise_controller?


  def check_for_mobile
    session[:mobile_override] = params[:mobile] if params[:mobile]
  end

  def mobile_device?
    if session[:mobile_override]
      session[:mobile_override] == "1"
    else
      # Season this regexp to taste. I prefer to treat iPad as non-mobile.
      request.user_agent =~ /Mobile|webOS/
    end
  end
  helper_method :mobile_device?

 #  def default_url_options
 #  { host: ENV['HOST'] || 'localhost:3000' }
	# end

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:firstname, :name, :pseudo, :city, :profile_picture])
    devise_parameter_sanitizer.permit(:account_updaste, keys: [:firstname, :name, :pseudo, :city, :profile_picture])
  end

end
