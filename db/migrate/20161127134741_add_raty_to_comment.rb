class AddRatyToComment < ActiveRecord::Migration[5.0]
  def change
    add_column :comments, :raty, :integer
  end
end
