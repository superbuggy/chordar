class Chord < ActiveRecord::Base
  has_many :notes

  def voices
    self.notes.length
  end


  def construct_chord

    starting_note_index = Note.tones.index( self.root_note )
    note_indexes_for_building_chord = []
    note_indexes_for_building_chord.push( starting_note_index )

    if self.quality == "major"
      semitones_from_root = [4, 7]
    elsif self.quality == "minor"
      semitones_from_root = [3, 7]
    elsif self.quality == "major7"
      semitones_from_root = [4, 7, 11]
    elsif self.quality == "minor7"
      semitones_from_root = [3, 7, 10]
    elsif self.quality == "dom7"
      semitones_from_root = [4, 7, 10]
    elsif self.quality == "minmaj7"
      semitones_from_root = [3, 7, 11]
    end

    semitones_from_root.each do |voice_halfsteps|
      next_voice = ( voice_halfsteps + starting_note_index ) % 12
      note_indexes_for_building_chord.push( next_voice )
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
