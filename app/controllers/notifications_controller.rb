class NotificationsController < ApplicationController
  def index
    @releases = current_user.releases
  end
end
