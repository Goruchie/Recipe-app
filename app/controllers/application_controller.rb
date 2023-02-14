class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :authenticate_user!
  # def update_allowed_parameters
  #   devise_parameter_sanitizer.permit(:sign_up) do |u|
  #     u.permit(:name, :bio, :email, :password, :password_confirmation, :role)
  #   end
  #   devise_parameter_sanitizer.permit(:account_update) do |u|
  #     u.permit(:name, :bio, :email, :password, :current_password, :role)
  #   end
  # end
end
