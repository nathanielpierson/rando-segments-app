class AddStarNumberToStars < ActiveRecord::Migration[8.0]
  def change
    add_column :stars, :star_number, :integer
  end
end
