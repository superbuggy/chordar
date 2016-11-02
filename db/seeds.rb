# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
Chord.destroy_all

c_maj = Chord.create!(notes:"C5,E5,G5")
d_maj = Chord.create!(notes:"D5,F#5,A5")
e_maj = Chord.create!(notes:"E5,G#5,B5")
f_maj = Chord.create!(notes:"F5,A5,C5")
g_maj = Chord.create!(notes:"G5,B5,D5")
a_maj = Chord.create!(notes:"A5,C#5,E5")
b_maj = Chord.create!(notes:"B5,D#5,F#5")

c_sharp_maj = Chord.create!(notes:"C#5,E#5,G#5")
d_sharp_maj = Chord.create!(notes:"D#5,F##5,A#5")
e_sharp_maj = Chord.create!(notes:"E#5,G##5,B#5")
f_sharp_maj = Chord.create!(notes:"F#5,A#5,C#5")
g_sharp_maj = Chord.create!(notes:"G#5,B#5,D#5")
a_sharp_maj = Chord.create!(notes:"A#5,C##5,E#5")
b_sharp_maj = Chord.create!(notes:"B#5,D##5,F##5")

c_flat_maj = Chord.create!(notes:"Cb5,Eb5,Gb5")
d_flat_maj = Chord.create!(notes:"Db5,Fbb5,Ab5")
e_flat_maj = Chord.create!(notes:"Eb5,Gbb5,Bb5")
f_flat_maj = Chord.create!(notes:"Fb5,Ab5,Cb5")
g_flat_maj = Chord.create!(notes:"Gb5,Bb5,Db5")
a_flat_maj = Chord.create!(notes:"Ab5,Cbb5,Eb5")
b_flat_maj = Chord.create!(notes:"Bb5,Dbb5,Fbb5")
