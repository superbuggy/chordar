class NotesController < ApplicationController

  def index
    @omnichord = Chord.find_by(quality:"dodecaphonic")
    @notes = @omnichord.notes
  end

  def show
    @note = Note.find(params[:id])
  end

end
