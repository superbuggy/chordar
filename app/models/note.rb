class Note
  attr_reader :letter, :pitch_index, :octave, :accidental, :frequency
  def initialize (letter, accidental, octave)
    # Reference: Middle C (C4) has a pitch_index of 48
    accidentals = {
      "bb": -2,
      "b": -1,
      "n": 0,
      "#": 1,
      "##": 2
    }

    tone_letters = {
      "C": 0,
      "D": 2,
      "E": 4,
      "F": 5,
      "G": 7,
      "A": 9,
      "B": 11
    }

    pitch_index = tone_letters[letter.to_sym] + accidentals[accidental.to_sym] + (octave * 12)

    @letter = letter
    @accidental = accidental
    @octave = octave
    @pitch_index = pitch_index
    @frequency = 2 ** ( ( pitch_index - 69.0 ) / 12.0 )  * 440
  end
end
