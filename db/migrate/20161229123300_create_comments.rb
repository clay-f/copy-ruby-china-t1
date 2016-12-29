    class CreateComments < ActiveRecord::Migration[5.0]
      def change
        create_table :comment do |t|
          t.integer :raty
          t.text :body

          t.timestamps
        end
      end
    end
