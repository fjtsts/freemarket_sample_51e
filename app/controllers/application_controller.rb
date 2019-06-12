class ApplicationController < ActionController::Base
  before_action :basic_auth, if: :production?
  before_action :search
  before_action :configure_permitted_parameters, if: :devise_controller?
  protect_from_forgery with: :exception

  private

  def production?
    Rails.env.production?
  end

  def basic_auth
    authenticate_or_request_with_http_basic do |username, password|
      username == ENV["BASIC_AUTH_USER"] && password == ENV["BASIC_AUTH_PASSWORD"]
    end
  end

  protected

    def configure_permitted_parameters
      devise_parameter_sanitizer.permit(:sign_up, keys: [:nickname])
      devise_parameter_sanitizer.permit(:sign_up, keys: [user_profile_attributes: [:last_name,:first_name,:last_name_kata,:first_name_kata,:birth,:tel] ])
      devise_parameter_sanitizer.permit(:sign_up, keys: [address_attributes: [:last_name,:first_name,:last_name_kata,:first_name_kata,:postal_code,:prefecture,:city,:town_number,:building,:tel] ])
    end

  private
    def index
      $query = Item.ransack(params[:q])
    end
    def search
      $query = Item.ransack(params[:q])
      @items = $query.result.includes(:item,:category, :brand)
    end

   
end
