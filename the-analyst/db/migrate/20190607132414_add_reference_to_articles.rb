class AddReferenceToArticles < ActiveRecord::Migration[5.2]
  def change
    add_column :articles, :source_id, :integer
    add_foreign_key :articles, :sources
  end
end
