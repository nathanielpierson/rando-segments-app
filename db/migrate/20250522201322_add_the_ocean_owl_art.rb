class AddTheOceanOwlArt < ActiveRecord::Migration[8.0]
  def change
    add_column :levels, :ocean_owl_image_url, :string
    add_column :levels, :official_image_url, :string
  end
end
