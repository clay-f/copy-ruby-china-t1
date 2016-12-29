class AddArticleIdToComment < ActiveRecord::Migration[5.0]
  def change
    add_column :comments, :article_id, :integer
  end
end
