class AddNodeNameToArticle < ActiveRecord::Migration[5.0]
  def change
    add_column :articles, :node_name, :string
  end
end
