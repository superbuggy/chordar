# will only construct chords using sharps! see note.rb comments for detailed
# explanation
class Chord < ActiveRecord::Base
  has_many :notes

  def voices
    self.notes.length
  end

  def self.letter_tones
    {
      "C" => 0,
      "D" => 2,
      "E" => 4,
      "F" => 5,
      "G" => 7,
      "A" => 9,
      "B" => 11
    }
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

  # this method is to be called after a chord has been saved, and creates Note
  # objects that make up the chord
  def construct_chord

  end

end
