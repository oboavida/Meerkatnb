# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
Meerkat.destroy_all

User.create!(
    name: Faker::Name.unique.name,
    location: Faker::Address.city,
    description: 'I want to be a cool person',
    email: "carolv0395@gmail.com",
    password:'120395'
    )

5.times do
  User.create!(
    name: Faker::Name.unique.name,
    location: Faker::Address.city,
    description: Faker::Lorem.paragraph,
    email: Faker::Internet.unique.email,
    password:'123456',
    photo: 'https://kitt.lewagon.com/placeholder/users/random'
    )
end


meerkat_attributes = [
  {
    user_id: rand(1..5),
    name: 'Antonio',
    specialty: 'Cook',
    age: 5,
    price: rand(5..50),
    location: Faker::Address.city,
    description: "The best Meerkat-chef you'll ever hire. Special dishes include: Hakuna Matata Oven Batata.",
    photo: 'https://source.unsplash.com/random/?meerkat'
  },
  {
    user_id: rand(1..5),
    name: 'Irene',
    specialty: 'Assassin',
    age: 5,
    price: rand(5..50),
    location: Faker::Address.city,
    description: "Get a special edge with this cute but killer meerkat. She will leave your enemies in the dust.",
    photo: 'https://source.unsplash.com/random/?meerkat'
  },
  {
    user_id: rand(1..5),
    name: 'Carolina',
    specialty: 'Fullstack programmer',
    age: 5,
    price: rand(5..50),
    location: Faker::Address.city,
    description: "Badass in the front and the back -- end, we mean.",
    photo: 'https://source.unsplash.com/random/?meerkat'
  },
  {
    user_id: rand(1..5),
    name: 'Pedro',
    specialty: 'Translator',
    age: 5,
    price: rand(5..50),
    location: Faker::Address.city,
    description: "Will help you with all your linguistic needs. Mandarin, English, Brazilian Portuguese, he knows it all. Just don't ask for any portuguese slang.",
    photo: 'https://source.unsplash.com/random/?meerkat'
  },
  {
    user_id: rand(1..5),
    name: 'Jojo',
    specialty: 'Marketing Consultant',
    age: 5,
    price: rand(5..50),
    location: Faker::Address.city,
    description: "A boss-meerkat. Alergic to gluten.",
    photo: 'https://source.unsplash.com/random/?meerkat'
  }
]


Meerkat.create!(meerkat_attributes)
