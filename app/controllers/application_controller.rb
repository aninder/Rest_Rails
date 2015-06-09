class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_action :authenticate_user!
  rescue_from CanCan::AccessDenied do |exception|
    redirect_to root_url, :alert => exception.message
  end

  # skip_before_action :verify_authenticity_token, if: :js_get_request?

  protected
  def js_get_request?
    request.format.js? && request.method == "GET"
  end
  # binding.pry
end
