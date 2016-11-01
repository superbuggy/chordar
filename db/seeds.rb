# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
Chord.destroy_all

c_maj = Chord.create!(notes:"C5,E5,G5", quality:"major")
f_maj = Chord.create!(notes:"F5,A5,C5", quality:"major")
g_maj = Chord.create!(notes:"G5,B5,D5", quality:"major")
