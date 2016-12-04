class TopicsController < ApplicationController

  before_action :set_article, only: [:last, :index, :no_reply, :popular, :favorites]

  def favorites
  end

  def popular
  end

  def no_reply
  end

  def last
  end

  def index
  end

  def show
    @article = Article.where(node_id: params[:id])
  end

  private

    def set_article
      @article = Article.all.order("created_at DESC")
    end

end
