class AddSpecificTimeMeasurementsToLevelTimes < ActiveRecord::Migration[8.0]
  def change
    add_column :levels, :fastest_time_sec, :integer
    add_column :levels, :fastest_time_milli, :integer
    rename_column :levels, :fastest_time, :fastest_time_min
    add_column :levels, :avg_time_sec, :integer
    add_column :levels, :avg_time_milli, :integer
    rename_column :levels, :avg_time, :avg_time_min
  end
end
