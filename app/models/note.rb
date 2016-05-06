class Note < ActiveRecord::Base
  belongs_to :chord

  # the 'lexis' of notes; notice here that there are no flats, so chords are
  # not (techically) correctly spelled, but enharmonically, the pitches are correct
  # for instance D#maj7 would be spelled via the code as 'D#, G, A#, D' when
  # the techically correct spelling would be D# F## (or Fx) A# C##.
  # again, the two spellings are enharmonically equivalent, meaning they correspond
  # to the same pitches. an additional note is that Eb maj7 is probably much more
  # common, and is also enharmonically equivalent to D#maj7

  # TODO implement flats!
  # TODO implement math for generating a pitch in Hz
  # TODO implement octave functionality
  ## see comments in chord.rb on my thoughts about this.
  # I think this sort of thing will solve itself once you flesh out more of this application.
  # IE if you have a notes pitch/frequency you can just have a gigantic hash that maps frequency.
  # Or better yet an algorithim that takes a frequencey and generates all of the other properties
  def self.tones
    ["C","C#","D","D#","E","F","F#","G","G#","A","A#","B"]
  end

end
