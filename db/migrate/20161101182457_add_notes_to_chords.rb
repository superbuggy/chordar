class AddNotesToChords < ActiveRecord::Migration
  def change
    add_column :chords, :notes, :string
  end
end
