# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts 'Cleaning database...'
Restaurant.destroy_all
Review.destroy_all

puts 'Creating restaurants...'
restaurants_attributes = [
  {
    name:         "Epicure au Bristol",
    address:      "112 rue du Fg St-Honoré 75008 Paris",
    phone_number: "+33 5 78 52 43 22",
    category:     "french"
  },
  {
    name:         "La truffière",
    address:      "4 rue Blainville 75005 Paris",
    phone_number: "+33 1 00 88 43 22",
    category:     "french"
  },
  {
    name:         "Le pré catelan",
    address:      "route de Suresnes 75016 Paris",
    phone_number: "+33 1 22 88 34 99",
    category:     "french"
  }
]
Restaurant.create!(restaurants_attributes)
restos = Restaurant.all

reviews_attributes = [
  {
    content:       "Good",
    rating:        4,
    restaurant:    restos[0]
  },
  {
    content:       "Medium",
    rating:        2,
    restaurant:    restos[0]
  },
  {
    content:       "Excellent",
    rating:        5,
    restaurant:    restos[1]
  },
  {
    content:       "Never again",
    rating:        0,
    restaurant:    restos[1]
  },
  {
    content:       "Good",
    rating:        4,
    restaurant:    restos[2]
  },
  {
    content:       "Very good",
    rating:        5,
    restaurant:    restos[2]
  }
]
Review.create!(reviews_attributes)
puts 'Finished!'
