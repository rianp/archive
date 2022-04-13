class ApplicationController < ActionController::Base
  before_action :set_query
  before_action :set_uploads

  def set_query
    @query = Upload.ransack(params[:q])
  end

  def set_uploads
    @uploads = Upload.all 
  end
end
