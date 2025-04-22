class CreateRuns < ActiveRecord::Migration[8.0]
  def change
    create_table :runs do |t|
      t.integer :level_id
      t.integer :seconds
      t.timestamps
    end
  end
end
