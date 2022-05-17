class LikesController < ApplicationController
  before_action :set_upload
  before_action :find_like, only: [:destroy]

  def create
    if (current_user == nil)
      redirect_to new_user_session_path
    else
      @upload.likes.create(user_id: current_user.id)
      redirect_to upload_path(@upload)
    end
  end

  def destroy
    if (already_liked?)
      @like.destroy
    end
    redirect_to upload_path(@upload)
  end

  private

  def already_liked?
    Like.where(user_id: current_user.id, upload_id: params[:upload_id]).exists?
  end

  def set_upload
    @upload = Upload.find(params[:upload_id])
  end

  def find_like
    @like = @upload.likes.find(params[:id])
  end
end
