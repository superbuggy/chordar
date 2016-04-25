class CreateChords < ActiveRecord::Migration
  def change
    create_table :chords do |t|
      t.integer :voices
      t.string :type
      t.references :note, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
