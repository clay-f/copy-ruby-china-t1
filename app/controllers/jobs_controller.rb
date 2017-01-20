class JobsController < ApplicationController
  before_action :random_suggestions_text

  def index
    @article = Article.all.order("created_at DESC").paginate(page: params[:page], :per_page => 7)
  end

  def random_suggestions_text
    @random_text = SuggestionsText.all.shuffle[1].text
  end
end
