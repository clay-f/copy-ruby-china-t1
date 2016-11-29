class TopicsController < ApplicationController

  def index
    @article = Article.all.order("created_at DESC")
  end

  def show
    @article = Article.where(node_id: params[:id])
  end

end
