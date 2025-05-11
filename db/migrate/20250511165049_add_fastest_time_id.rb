class AddFastestTimeId < ActiveRecord::Migration[8.0]
  def change
    add_column :levels, :fastest_time_id, :integer
  end
end
