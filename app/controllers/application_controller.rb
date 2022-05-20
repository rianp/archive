class ApplicationController < ActionController::Base
  before_action :set_query
  before_action :set_uploads
  before_action :set_notifications, if: :current_user

  def set_query
    @query = Upload.ransack(params[:q])
  end

  def set_uploads
    @uploads = Upload.all 
  end

  def set_notifications
    notifications = Notification.where(recipient: current_user).newest_first.limit(9)
    @unread = notifications.unread
    @read = notifications.read
  end
end
