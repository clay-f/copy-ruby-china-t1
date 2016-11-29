class AddNodeIdToArticle < ActiveRecord::Migration[5.0]
  def change
    add_column :articles, :node_id, :integer
  end
end
