class TheyreLevelsNotCourses < ActiveRecord::Migration[8.0]
  def change
    rename_column :stars, :course_id, :level_id
  end
end
