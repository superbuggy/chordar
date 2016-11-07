class Chord < ActiveRecord::Base

  def self.qualities
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

  def voices
    self.notes.split(",").length
  end

  def intervals
    root = self.get_pitches[0]
    self.get_pitches.each_cons(2).map { |a,b| b - root }
  end

  def quality
    qualities = Chord.qualities
    return qualities.each do |quality, intervals_array|
      if self.intervals == intervals_array
        return quality
      else
        return "other"
      end
    end
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

    note_letter = note_string[0]
    accidental = note_string.split(/(\d+)/)[0].split(/(##|#|bb|b)/)[1]
    # if split returns null
    accidental ? "" : accidental = "n"

    octave = note_string.split(/(\d+)/)[1].to_i
    note_rel_pitch = tone_letters[note_letter.to_sym].to_i
    note_abs_pitch = note_rel_pitch + 12 * octave + accidentals[accidental.to_sym].to_i
  end

  # returns midi note numbers of pitches as array
  def get_pitches
    notes_array = self.notes.split(",")
    notes_array.map{ |note| to_pitch note }
  end

  # returns frequencies of notes in chord as array
  def get_freqs
    midi_notes_nums = get_pitches
    midi_notes_nums.map do |midi_note_num|
      2 ** ( ( midi_note_num - 69.0 ) / 12.0 )  * 440
    end
  end

end
