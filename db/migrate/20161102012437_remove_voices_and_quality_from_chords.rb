class RemoveVoicesAndQualityFromChords < ActiveRecord::Migration
  def change
    remove_column :chords, :voices, :integer
    remove_column :chords, :quality, :string
  end
end
