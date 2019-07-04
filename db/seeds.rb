# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Fish.destroy_all
Decoration.destroy_all

Fish.create(name: "Xavierfish", cost: 50)
Fish.create(name: "Peterfish", cost: 125)
Fish.create(name: "Max the Shrimp", cost: 200)
Fish.create(name: "Rina the Shark", cost: 300)

Fish.create(name: "Richard the Eel", cost: 75)
Fish.create(name: "Mattopus", cost: 150)
Fish.create(name: "Jennafish", cost: 250)
Fish.create(name: "Gigi the Narwhal", cost: 500)

Fish.create(name: "Roxannefish", cost: 100)
Fish.create(name: "Echo the Crab", cost: 175)
Fish.create(name: "Leoniefish", cost: 275)
Fish.create(name: "Prince the Seahorse", cost: 500)

Decoration.create(name: "Pebbles", cost: 100)
Decoration.create(name: "Squidward's House", cost: 300)
Decoration.create(name: "Seaweed", cost: 200)
Decoration.create(name: "CS51 Sign", cost:400)







puts "Seed Complete! 🐠"
