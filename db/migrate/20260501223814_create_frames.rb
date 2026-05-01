class CreateFrames < ActiveRecord::Migration[8.0]
  def change
    create_table :frames do |t|
      t.string :image_path
      t.integer :level_id
      t.string :frame_type
      t.string :time

      t.timestamps
    end
  end
end
