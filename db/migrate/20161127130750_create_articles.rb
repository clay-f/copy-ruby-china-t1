class CreateArticles < ActiveRecord::Migration[5.0]
  def change
    create_table :articles do |t|
      t.string :title
      t.text :text

      t.timestamps

      def change
        create_table :comments do |t|
        end
      end
    end
  end
end
