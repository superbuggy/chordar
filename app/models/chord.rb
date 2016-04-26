class Chord < ActiveRecord::Base
  has_many :notes

  def voices
    self.notes.length
  end


  def construct_chord
    note_indexes_for_building_chord = []
    note_indexes_for_building_chord.push( Note.tones.index(self.root_note) )
    if self.quality == "major"

      note_indexes_for_building_chord.push( (note_indexes_for_building_chord.last + 4) % 12)
      note_indexes_for_building_chord.push( (note_indexes_for_building_chord.last + 3) % 12)

    elsif self.quality == "minor"

      note_indexes_for_building_chord.push( (note_indexes_for_building_chord.last + 3) % 12)
      note_indexes_for_building_chord.push( (note_indexes_for_building_chord.last + 4) % 12)

    end

    note_indexes_for_building_chord.each do |note_index|

            Note.create( name: Note.tones[note_index],
                         letter: Note.tones[note_index][0],
                         accidental: Note.tones[note_index][1],
                         octave: -1,
                         pitch: 0,
                         chord_id: self.id
            )
    end


  end

end
