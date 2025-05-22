class AddOfficialCourseNumberToLevels < ActiveRecord::Migration[8.0]
  def change
    add_column :levels, :official_course_number, :integer
  end
end
