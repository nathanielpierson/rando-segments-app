class AddTimeFragments < ActiveRecord::Migration[8.0]
  def change
    add_column :runs, :minutes, :integer
    add_column :runs, :miliseconds, :float
  end
end
