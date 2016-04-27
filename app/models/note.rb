class Note < ActiveRecord::Base
  belongs_to :chord

  def self.tones
    ["C","C#","D","D#","E","F","F#","G","G#","A","A#","B"]
  end

  #middle c is note 60
end
