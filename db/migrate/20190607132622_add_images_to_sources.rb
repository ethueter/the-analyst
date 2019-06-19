class AddImagesToSources < ActiveRecord::Migration[5.2]
  def change
    add_column :sources, :image_url, :string
  end
end
