class AddArticleIdToArticle < ActiveRecord::Migration[5.0]
  def change
    add_column :articles, :article_id, :integer
  end
end
