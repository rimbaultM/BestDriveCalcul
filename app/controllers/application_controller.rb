
class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  def home
  end

  protected

    def configure_permitted_parameters
      devise_parameter_sanitizer.permit(:sign_up,
        keys: [:name, :password, :password_confirmation])

    end
end
