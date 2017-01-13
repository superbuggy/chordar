class Note
  def initialize(note_string)
    @letter = note_string[0]
    @accidental = note_string.split(/(##|#|bb|b)/)[1]
    @accidental ||= 'n'
    @octave = note_string.split(/(\d+)/)[1].to_i
    @pitch = Note.letter_tones[@letter.to_sym] + Note.accidentals[@accidental.to_sym] + 12 * @octave
    @frequency = 2 ** ( ( @pitch - 57.0 ) / 12.0 )  * 440
  end

  def self.letter_tones
    {
      "C": 0,
      "D": 2,
      "E": 4,
      "F": 5,
      "G": 7,
      "A": 9,
      "B": 11
    }
  end

  def self.accidentals
    {
      "bb": -2,
      "b": -1,
      "n": 0,
      "#": 1,
      "##": 2
    }
  end

end
