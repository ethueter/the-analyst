class CreateSources < ActiveRecord::Migration[5.2]
  def change
    create_table :sources do |t|
      t.string :name
      t.string :description
      t.string :tagline
      t.string :source_url
    end
  end
end
