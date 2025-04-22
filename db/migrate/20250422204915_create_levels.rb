class CreateLevels < ActiveRecord::Migration[8.0]
  def change
    create_table :levels do |t|
      t.string :name
      t.string :type
      t.string :fastest_time
      t.integer :
      t.string :avg_time
      t.integer :

      t.timestamps
    end
  end
end
