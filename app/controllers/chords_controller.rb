class ChordsController < ApplicationController

def index
  @chords = Chord.where.not(quality: "dodecaphonic")
end

def show
  @chord = Chord.find(params[:id])
end

def new
  @chord = Chord.new
end

# TODO add ability to edit chords
# what were you thinking about for this edit functionality? Delete all child notes and recreate?
def edit
  @chord = Chord.find(params[:id])
end

def create
  @chord = Chord.new(chord_params)
  if @chord.save
    #calls model method to instantiate notes of a chord
    @chord.construct_chord
    redirect_to @chord
  else
    render 'new'
  end
end

# TODO add ability to edit chords
def update
  @chord = Chord.find(params[:id])
  if @chord.update(chord_params)
    redirect_to @chord
  else
    render 'edit'
  end
end

def destroy
  @chord = Chord.find(params[:id])
  @chord.destroy
  redirect_to chords_path
end

private
  def chord_params
    params.require(:chord).permit(:root_note, :quality)
  end

end
