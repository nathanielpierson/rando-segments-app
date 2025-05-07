class SpellMillisecondsCorrectly < ActiveRecord::Migration[8.0]
  def change
    rename_column :runs, :miliseconds, :milliseconds
  end
end
