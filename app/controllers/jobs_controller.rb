class JobsController < ApplicationController
  def index
    @article = Article.where(node_id: 2)
  end
end
