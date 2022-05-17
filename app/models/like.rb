class Like < ApplicationRecord
  belongs_to :user
  belongs_to :upload
  validates :user_id, uniqueness: {scope: :upload_id}

  after_create_commit :notify_recipient
  before_destroy :cleanup_notifications
  has_noticed_notifications model_name: 'Notification'

  private
  def notify_recipient
    LikeNotification.with(like: self, upload: upload).deliver_later(upload.user)
  end

  def cleanup_notifications
    notifications_as_like.destroy_all
  end
end
