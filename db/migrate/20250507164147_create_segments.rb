class CreateSegments < ActiveRecord::Migration[8.0]
  def change
    create_table :segments do |t|
      t.integer :level_id
      t.integer :time
      t.datetime :date_performed

      t.timestamps
    end
  end
end
