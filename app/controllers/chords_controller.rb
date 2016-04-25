class ChordsController < ApplicationController

def index
  @chords = Chord.all
end

def show
  @chord = Chord.find(params[:id])

end

def new
  @chord = Chord.new
end

def edit
  @chord = Chord.find(params[:id])
end

def create
  @chord = Chord.new(chord_params)
  if @chord.save
    redirect_to @chord
  else
    render 'new'
  end
end

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
    params(:chord).require(:type,:voices)
  end

end
