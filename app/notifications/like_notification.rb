# To deliver this notification:
#
# LikeNotification.with(post: @post).deliver_later(current_user)
# LikeNotification.with(post: @post).deliver(current_user)

class LikeNotification < Noticed::Base
  # Add your delivery methods
  #
  deliver_by :database
  # deliver_by :email, mailer: "UserMailer"
  # deliver_by :slack
  # deliver_by :custom, class: "MyDeliveryMethod"

  # Add required params
  #
  # param :post

  # Define helper methods to make rendering easier.
  #
  def message
    @upload = Upload.find(params[:upload][:id])
    @like = Like.find(params[:like][:id])
    @user = User.find(@like.user_id)
    "#{@user.username} liked #{@upload.name.truncate(20)}"
  end
  #
  def url
    upload_path(Upload.find(params[:upload][:id]))
  end
end
