class Note < ActiveRecord::Base
  belongs_to :chord

  # TODO implement math for generating a pitch in Hz
  # TODO implement octave functionality

  def self.tone_book
    {
        "B#"  => 0,  "C"  => 0,   "Dbb" => 0,
        "B##" => 1,  "C#" => 1,   "Db" =>  1,
        "C##" => 2,  "D"  => 2,   "Ebb" => 2,
        "D#"  => 3,  "Eb" => 3,   "Fbb" => 3,
        "D##" => 4,  "E"  => 4,   "Fb"  => 4,
        "E#"  => 5,  "F"  => 5,   "Gbb" => 5,
        "E##" => 6,  "F#" => 6,   "Gb"  => 6,
        "F##" => 7,  "G"  => 7,   "Abb" => 7,
        "G#"  => 8,  "Ab" => 8,
        "G##" => 9,  "A"  => 9,   "Bbb" => 9,
        "A#"  => 10, "Bb" => 10,  "Cbb" => 10,
        "A##" => 11, "B"  => 11,  "Cb"  => 11
    }
  end

end
