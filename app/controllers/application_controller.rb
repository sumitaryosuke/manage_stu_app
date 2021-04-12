class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up,
                                    keys: [:last_name, :first_name, :last_name_kana,:postal_code, :first_name_kana,:prefecture_code, :birth_day, :city, :street, :building])
  end
end
