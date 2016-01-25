# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Doctor.create!(name: 'Prasad Tumati', address: '8301 Paces Oaks Blvd', city: 'charlotte', state: 'NC', zip: '28120', school: 'Doe', years: '10' )
Doctor.create!(name: 'Susan Doe', address: '100 Luxemburg st', city: 'Newyork', state: 'NY', zip: '08001', school: 'Ace', years: '5' )
Doctor.create!(name: 'Bob Doe', address: '144 littleton st', city: 'Denver', state: 'CO', zip: '80111', school: 'Greeny', years: '7' )
Typeofpet.create!(name: 'Dog')
Typeofpet.create!(name: 'Cat')
Typeofpet.create!(name: 'Bird')
Pet.create!(name: 'Angel', typeofpet_id: 1, breed: 'prison', age:'1', weight:'10', lastvisit: Date.new(2014,8,15) )
Appointment.create!(doctor_id: 1, date: Date.new(2016,5,15),	pet:'prison',	customer:'Gilbert', reminder:'true',	reason:'angel injured')
