# will only construct chords using sharps! see note.rb comments for detailed
# explanation
class Chord < ActiveRecord::Base
  has_many :notes

  def voices
    self.notes.length
  end

  # each chord type, represented in the string and the corresponding number
  # of half-steps, relative to the root, for each voice of the chord
  def self.schemata
    {
      "major" =>      [4, 7],
      "minor" =>      [3, 7],
      "diminished" => [3, 6],
      "augmented" =>  [4, 8],
      "major7" =>     [4, 7, 11],
      "minor7" =>     [3, 7, 10],
      "dom7" =>       [4, 7, 10],
      "min-maj7" =>    [3, 7, 11]
    }
  end

  # this method is to be called after a chord has been saved, and creates Note
  # objects that make up the chord
  def construct_chord
    # gets starting note and pushes its index (relative to Note.tones)
    # to an array used to build the chord
    starting_note_index = Note.tones.index( self.root_note )
    note_indexes_for_building_chord = []
    note_indexes_for_building_chord.push( starting_note_index )

    # semitones_from_root gets the relevant chord schema, sums in modulo 12 in
    # the variable next_voice, and is then pushed to the array used to build
    # the notes of the chord
    semitones_from_root = Chord.schemata[ self.quality ]
    semitones_from_root.each do |voice_halfsteps|
      next_voice = ( voice_halfsteps + starting_note_index ) % 12
      note_indexes_for_building_chord.push( next_voice )
    end

    # instantiates the notes using
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
