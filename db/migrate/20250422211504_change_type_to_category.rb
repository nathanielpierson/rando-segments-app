class ChangeTypeToCategory < ActiveRecord::Migration[8.0]
  def change
    rename_column :levels, :type, :category
  end
end
