class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?
  # Send 'em back where they came from with a slap on the wrist
  def authority_forbidden(error)
    Authority.logger.warn(error.message)
    redirect_to request.referrer.presence || root_path, :alert => 'You are not authorized to complete that action.'
  end
  
  protect_from_forgery with: :exception
  
  protected
  
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up) { |u| u.permit(:email, :password,
      :password_confirmation, :remember_me, :avatar, :avatar_cache, :remove_avatar, :is_female, :date_of_birth, :height, :weight, :nickname, :avatar) }
    devise_parameter_sanitizer.permit(:account_update) { |u| u.permit(:password,
      :password_confirmation, :current_password, :avatar, :avatar_cache, :remove_avatar, :is_female, :date_of_birth, :height, :weight, :nickname, :avatar) }
  end

 
  
  
  
end
