class CreateChords < ActiveRecord::Migration
  def change
    create_table :chords do |t|
      t.integer :voices
      t.string :quality
      t.string :root_note

      t.timestamps null: false
    end
  end
end
