class ChangeColName < ActiveRecord::Migration
  def change
    rename_column :notes, :pitch, :frequency
  end
end
