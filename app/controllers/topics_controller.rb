class TopicsController < ApplicationController

  before_action :set_article, only: [:last, :index, :no_reply, :favorites]
  before_action :random_suggestions_text

  def favorites
  end

  def popular
    @article = Article.all.paginate(page: params[:page], per_page: 7)
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
      @article = Article.all.order("created_at DESC").paginate(page: params[:page], :per_page => 7)
    end

    def random_suggestions_text
      @random_text = SuggestionsText.all.shuffle[1].text
    end

end
