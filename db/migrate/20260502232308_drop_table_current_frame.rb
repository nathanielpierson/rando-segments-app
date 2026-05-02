class DropTableCurrentFrame < ActiveRecord::Migration[8.0]
  def change
    drop_table :current_frames
  end
end
