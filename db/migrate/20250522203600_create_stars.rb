class CreateStars < ActiveRecord::Migration[8.0]
  def change
    create_table :stars do |t|
      t.string :name
      t.integer :course_id
      t.string :star_type
      t.boolean :is_unique

      t.timestamps
    end
  end
end
