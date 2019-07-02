# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Fish.destroy_all

Fish.create(name: "Xavierfish", cost: 50)
Fish.create(name: "Richardfish", cost: 75)
Fish.create(name: "Roxannefish", cost: 100)
Fish.create(name: "Peterfish", cost: 125)


Fish.create(name: "Mattfish", cost: 150)
Fish.create(name: "Echofish", cost: 175)
Fish.create(name: "Maxfish", cost: 200)
Fish.create(name: "Elijahfish", cost: 225)

Fish.create(name: "Jennafish", cost: 250)
Fish.create(name: "Ganeshfish", cost: 275)
Fish.create(name: "Leoniefish", cost: 300)
Fish.create(name: "Rinafish", cost: 325)

Fish.create(name: "Gigifish", cost: 500)
Fish.create(name: "Princefish", cost: 500)

puts "Seed Complete!"