class CreateArticles < ActiveRecord::Migration[5.2]
  def change
    create_table :articles do |t|
      t.string :title
      t.string :author
      t.text :content
      t.string :article_url
      t.string :image_url
      t.string :source_url
    end
  end
end
