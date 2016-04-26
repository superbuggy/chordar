# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

c_maj_chord = Chord.create!( voices:3, quality:"major" )

c_maj_note1 = Note.create!(name:"C", letter:"C" ,accidental:"", octave:4, pitch:0, chord_id: c_maj_chord.id )
c_maj_note2 = Note.create!(name:"E",letter:"E",accidental:"", octave:4, pitch:0, chord_id: c_maj_chord.id )
c_maj_note3 = Note.create!(name:"G",letter:"G",accidental:"", octave:4, pitch:0, chord_id: c_maj_chord.id )
