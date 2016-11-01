class RemoveRootNoteFromChords < ActiveRecord::Migration
  def change
    remove_column :chords, :root_note, :string
  end
end
