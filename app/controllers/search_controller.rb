class SearchController < ApplicationController
  def index
    @query = Upload.ransack(params[:q])
    @results = @query.result(distinct: true)
  end

end
