# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Note.destroy_all
Chord.destroy_all

thee_chord = Chord.create!(voices: 12, quality:"dodecaphonic")

note_c       = Note.create!(name:"C",   letter:"C",   accidental:"",   octave:4, pitch:0, chord_id: thee_chord.id )
note_c_sharp = Note.create!(name:"C#",   letter:"C",   accidental:"#", octave:4, pitch:0, chord_id: thee_chord.id )
note_d       = Note.create!(name:"D",   letter:"D",   accidental:"",   octave:4, pitch:0, chord_id: thee_chord.id )
note_d_sharp = Note.create!(name:"D#",   letter:"D",   accidental:"#", octave:4, pitch:0, chord_id: thee_chord.id )
note_e       = Note.create!(name:"E",   letter:"E",   accidental:"",   octave:4, pitch:0, chord_id: thee_chord.id )
note_f       = Note.create!(name:"F",   letter:"F",   accidental:"",   octave:4, pitch:0, chord_id: thee_chord.id )
note_f_sharp = Note.create!(name:"F#",   letter:"F",   accidental:"#", octave:4, pitch:0, chord_id: thee_chord.id )
note_g       = Note.create!(name:"G",   letter:"G",   accidental:"",   octave:4, pitch:0, chord_id: thee_chord.id )
note_g_sharp = Note.create!(name:"G#",   letter:"G",   accidental:"#", octave:4, pitch:0, chord_id: thee_chord.id )
note_a       = Note.create!(name:"A",   letter:"A",   accidental:"",   octave:4, pitch:0, chord_id: thee_chord.id )
note_a_sharp = Note.create!(name:"A#",   letter:"A",   accidental:"#", octave:4, pitch:0, chord_id: thee_chord.id )
note_b       = Note.create!(name:"B",   letter:"B",   accidental:"",   octave:4, pitch:0, chord_id: thee_chord.id )

c_maj = Chord.create!(root_note:"C", quality:"major")
c_maj.construct_chord
f_maj = Chord.create!(root_note:"F", quality:"major")
f_maj.construct_chord
g_maj = Chord.create!(root_note:"G", quality:"major")
g_maj.construct_chord
