class AdminController < ApplicationController
  def index
  end

  def uploads
    @uploads = Upload.all.includes(:user)
  end

  def users
  end

  def show_upload
    @upload = Upload.includes(:user).find(params[:id])
  end

  private

end
