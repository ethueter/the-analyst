class CreateUserArticles < ActiveRecord::Migration[5.2]
  def change
    create_table :user_articles do |t|
      t.integer :user_id
      t.integer :article_id
      t.integer :rating
      t.boolean :favorite
      t.boolean :visable
    end
  end
end
