class CreateCurrentFrames < ActiveRecord::Migration[8.0]
  def change
    create_table :current_frames do |t|
      t.string :image_url

      t.timestamps
    end
  end
end
