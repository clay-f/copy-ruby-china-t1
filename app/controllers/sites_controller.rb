class SitesController < ApplicationController

  def index
    @article = Article.all.order("created_at DESC").paginate(page: params[:page], :per_page => 7)
  end

end
