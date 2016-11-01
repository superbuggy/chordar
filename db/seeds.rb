# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
Chord.destroy_all

c_maj = Chord.create!(notes:"C5,E5,G5", quality:"major")
d_maj = Chord.create!(notes:"D5,F#5,A5", quality:"major")
e_maj = Chord.create!(notes:"E5,G#5,B5", quality:"major")
f_maj = Chord.create!(notes:"F5,A5,C5", quality:"major")
g_maj = Chord.create!(notes:"G5,B5,D5", quality:"major")
a_maj = Chord.create!(notes:"A5,C#5,E5", quality:"major")
b_maj = Chord.create!(notes:"B5,D#5,F#5", quality:"major")

c_sharp_maj = Chord.create!(notes:"C#5,E#5,G#5", quality:"major")
d_sharp_maj = Chord.create!(notes:"D#5,F##5,A#5", quality:"major")
e_sharp_maj = Chord.create!(notes:"E#5,G##5,B#5", quality:"major")
f_sharp_maj = Chord.create!(notes:"F#5,A#5,C#5", quality:"major")
g_sharp_maj = Chord.create!(notes:"G#5,B#5,D#5", quality:"major")
a_sharp_maj = Chord.create!(notes:"A#5,C##5,E#5", quality:"major")
b_sharp_maj = Chord.create!(notes:"B#5,D##5,F##5", quality:"major")

c_flat_maj = Chord.create!(notes:"Cb5,Eb5,Gb5", quality:"major")
d_flat_maj = Chord.create!(notes:"Db5,Fbb5,Ab5", quality:"major")
e_flat_maj = Chord.create!(notes:"Eb5,Gbb5,Bb5", quality:"major")
f_flat_maj = Chord.create!(notes:"Fb5,Ab5,Cb5", quality:"major")
g_flat_maj = Chord.create!(notes:"Gb5,Bb5,Db5", quality:"major")
a_flat_maj = Chord.create!(notes:"Ab5,Cbb5,Eb5", quality:"major")
b_flat_maj = Chord.create!(notes:"Bb5,Dbb5,Fbb5", quality:"major")
