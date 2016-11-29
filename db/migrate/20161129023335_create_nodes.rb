class CreateNodes < ActiveRecord::Migration[5.0]
  def change
    create_table :nodes do |t|
      t.string :nodeName

      t.timestamps
    end
  end
end
