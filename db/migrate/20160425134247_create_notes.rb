class CreateNotes < ActiveRecord::Migration
  def change
    create_table :notes do |t|
      t.string :name
      t.string :letter
      t.string :accidental
      t.integer :octave
      t.decimal :pitch

      t.timestamps null: false
    end
  end
end
