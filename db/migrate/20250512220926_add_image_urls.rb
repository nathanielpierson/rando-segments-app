class AddImageUrls < ActiveRecord::Migration[8.0]
  def change
    add_column :levels, :image_url, :string
  end
end
