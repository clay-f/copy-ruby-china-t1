class RemoveNodeNameFromArticle < ActiveRecord::Migration[5.0]
  def change
    remove_column :articles, :node_name, :string
  end
end
