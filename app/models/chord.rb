class Chord < ActiveRecord::Base
  after_initialize :create_chord
  attr_reader :notes

  def create_chord
    self.root_note
  end

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

  def get_skills
    self.skills.split(", ")
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



end
