# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create!(name: 'Rita', location: 'Lisbon', description: 'BLBLBLBLL', email:'anfff00@gmail.com', password:'123456')

Meerkat.create!(user_id: 1, name: 'Antonio', specialty: 'cooker', age: 5, price: 5, location: 'lisbon', description: 'Blablablabalalabalaab')
