class NotificationsController < ApplicationController
  skip_before_action :authenticate_user!
  skip_before_action :verify_authenticity_token, if: :js_get_request?

  def index
    if(params[:user_id])
      u = User.find_by_id(params[:user_id])
      @releases = u.try(:releases)
    elsif user_signed_in?
        @releases = current_user.releases
    else
      authenticate_user!
    end
    respond_to do |format|
      format.html
      format.js {
        render :template => 'releases/index'
      }
    end
  end

end
