class CreateArticles < ActiveRecord::Migration[6.1]
  def change
    create_table :articles do |t|
      t.string :title
      t.string :url
      t.text :description
      t.string :author

      t.timestamps
    end
  end
end
