class CreateNotes < ActiveRecord::Migration
  def change
    create_table :notes do |t|
      # there was another notes migration. I deleted it in this commit to get it to work.
      # Best practices would be to create a migration that adds a column to the database
      # rather that rewriting the entire migration
      t.string :name
      t.string :letter
      t.string :accidental
      t.integer :octave
      t.decimal :pitch
      t.references :chord
      # it almost seems like there should be a third model that joins notes with chords.
      # in that way you can see all the chords the note would be apart of

      t.timestamps null: false
    end
  end
end
