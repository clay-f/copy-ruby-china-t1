class ArticlesController < ApplicationController

  before_action :set_article, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: [:index, :show, :search]

  def search
    if params[:search].present?
      @article = Article.search(params[:search])
    else
      @article = Article.all.order("created_at DESC")
    end
  end

  def index
    @article = Article.all.order("created_at DESC")
  end

  def new
    @article = current_user.articles.build
    @nodes = Node.all.map{ |c| [c.nodeName, c.id] }
  end

  def create
    @article = current_user.articles.build(article_params)
    if @article.save
      redirect_to @article
    else
      render 'new'
    end
  end

  def show
  end

  def edit
    @nodes = Node.all.map{ |c| [c.nodeName, c.id] }
  end

  def update
    if @article.update(article_params)
      redirect_to @article
    else
      render 'edit'
    end
  end

  def destroy
    if @article.destroy
      redirect_to root_path
    end
  end

  private

    def set_article
      @article = Article.find(params[:id])
    end

    def article_params
      params[:article].permit(:title, :text, :node_id, :article_img)
    end


end
