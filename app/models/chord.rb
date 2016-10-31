class Chord < ActiveRecord::Base

  def initialize
    @notes = []
  end

  def notes
    @notes
  end

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

  # this method is to be called after a chord has been saved, and creates Note
  # objects that make up the chord
  def construct_chord
    self.notes.push( Note.new("C","n",5) )
    self.notes.push( Note.new("E","n",5) )
    self.notes.push( Note.new("G","n",5) )
  end

end
