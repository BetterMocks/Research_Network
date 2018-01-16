class ApplicationController < ActionController::Base
include PublicActivity::StoreController

  protect_from_forgery with: :exception

before_action :configure_permitted_parameters, if: :devise_controller?

  def configure_permitted_parameters
     devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :age, :gender, :location, :institution, :designation])
  end


end
