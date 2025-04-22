class CreateLevels < ActiveRecord::Migration[8.0]
  def change
    create_table :levels do |t|
      t.string :name
      t.string :type
      t.integer :fastest_time
      t.integer :avg_time

      t.timestamps
    end
  end
end
