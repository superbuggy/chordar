class Chord < ActiveRecord::Base

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
      "min-maj7" =>   [3, 7, 11]
    }
  end

  def to_pitch note_string
    tone_letters = {
      "C": 0,
      "D": 2,
      "E": 4,
      "F": 5,
      "G": 7,
      "A": 9,
      "B": 11
    }

    accidentals = {
      "bb": -2,
      "b": -1,
      "n": 0,
      "#": 1,
      "##": 2
    }
    accidental = note_string.split(/(\d+)/)[0].split(/(##|#|bb|b|n)/)[1]
    note_letter = note_string.split(/(\d+)/)[0].split(/(##|#|bb|b|n)/)[0]
    accidental ? "" : accidental = "n"
    # puts "#{accidental} #{note_letter}"
    octave = note_string.split(/(\d+)/)[1].to_i
    note_rel_pitch = tone_letters[note_letter.to_sym].to_i
    note_abs_pitch = note_rel_pitch + 12 * octave + accidentals[accidental.to_sym].to_i
  end

  # objects that make up the chord
  def get_pitches
    notes_array = self.notes.split(",")
    notes_array.map{ |note| to_pitch note }
  end


end
