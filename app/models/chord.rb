class Chord < ActiveRecord::Base
  has_many :notes
  after_initialize :save_instance

  def save_instance
    self.save
  end

  def voices
    self.notes.length
  end


  def construct_chord starting_note, chord_type
    binding.pry
    first_tone_index = Note.tones.index(starting_note)

    if chord_type == "major"

      second_tone_index = (first_tone_index + 4) % 12

      third_tone_index = (first_tone_index + 7) % 12

      Note.create( name: Note.tones[first_tone_index],
                   letter: Note.tones[first_tone_index][0],
                   accidental: Note.tones[first_tone_index][1],
                   octave: -1,
                   pitch: 0,
                   chord_id: self.id
      )
      Note.create( name: Note.tones[second_tone_index],
                   letter: Note.tones[second_tone_index][0],
                   accidental: Note.tones[second_tone_index][1],
                   octave: -1,
                   pitch: 0,
                   chord_id: self.id
      )
      Note.create( name: Note.tones[third_tone_index],
                   letter: Note.tones[third_tone_index][0],
                   accidental: Note.tones[third_tone_index][1],
                   octave: -1,
                   pitch: 0,
                   chord_id: self.id
      )

    elsif chord_type == "minor"

      second_tone_index = (first_tone_index + 3) % 12
      third_tone_index = (first_tone_index + 7) % 12
      Note.create( name: Note.tones[first_tone_index],
                   letter: Note.tones[first_tone_index][0],
                   accidental: Note.tones[first_tone_index][1],
                   octave: -1,
                   pitch: 0,
                   chord_id: self.id
      )
      Note.create( name: Note.tones[second_tone_index],
                   letter: Note.tones[second_tone_index][0],
                   accidental: Note.tones[second_tone_index][1],
                   octave: -1,
                   pitch: 0,
                   chord_id: self.id
      )
      Note.create( name: Note.tones[third_tone_index],
                   letter: Note.tones[third_tone_index][0],
                   accidental: Note.tones[third_tone_index][1],
                   octave: -1,
                   pitch: 0,
                   chord_id: self.id
      )

    end

  end

end
