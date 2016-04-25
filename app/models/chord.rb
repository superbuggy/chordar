class Chord < ActiveRecord::Base
  has_many :notes

  def notes_array
    
  end
end
