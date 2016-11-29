class CommentsController < ApplicationController

  before_action :set_article
  before_action :set_comment, only: [:destroy, :edit, :update]
  before_action :authenticate_user!, except: [:show, :index,]


  def new
    @comment = @article.comments.build
  end

  def create
    @comment = @article.comments.build(comment_params)
    @comment.user_id = current_user.id
    if @comment.save
      redirect_to @article
    else
      render 'new'
    end
  end

  def edit

  end

  def update
    if @comment.update(comment_params)
      redirect_to @article
    else
      render 'edit'
    end
  end

  def destroy
    if @comment.destroy
      redirect_to @article
    end
  end

  private

  def comment_params
    params[:comment].permit(:raty, :body)
  end

  def set_article
    @article = Article.find(params[:article_id])
  end

  def set_comment
    @comment = @article.comments.find(params[:id])
  end
end
