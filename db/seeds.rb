# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Meerkat.destroy_all
User.destroy_all

puts 'DB limpa'

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

puts 'Users criados'


meerkat_attributes = [
  {
    user: User.all.sample,
    name: 'Antonio',
    specialty: 'Cook',
    age: 5,
    price: rand(5..50),
    location: Faker::Address.city,
    description: "The best Meerkat-chef you'll ever hire. Had a lot of experience in cooking vegans fooods.In a special task to develop vegan meats, for him not be chosen as an ingredient. Special dishes include: Hakuna Matata Oven Batata. Alert: Be careful sometimes it will eat the food that he coocked with  o leftovers.",
    remote_photo_url: 'https://media.giphy.com/media/3ohs84hCK9NkFP8nKM/giphy.gif'
  },
  {
    user: User.all.sample,
    name: 'Irene',
    specialty: 'Assassin',
    age: 5,
    price: rand(5..50),
    location: Faker::Address.city,
    description: "Learned with the master of meerkat martial arts, Shung Sun Tzu to defend against the predators. Put her knowledge to work as a rented assasin, if you want someone to be killed call her. Get a special edge with this cute but killer meerkat. She will leave your enemies in the dust. Price may change depending of the sizes of the victims.",
    remote_photo_url: 'http://www.pxleyes.com/images/contests/mixed-media-46/fullsize/mixed-media-46-591800711cfb7.png'
  },
  {
    user: User.all.sample,
    name: 'Carolina',
    specialty: 'Fullstack programmer',
    age: 5,
    price: rand(5..50),
    location: Faker::Address.city,
    description: "Did a course of programing at the Le Wagon in the Botswana jungles. Badass in the front and the back -- end, we mean. Sometimes have to take a break to smoke in her fancy eletronic cigarette.",
    remote_photo_url: 'https://media.giphy.com/media/26DMXuFkfvB8GEQFy/giphy.gif'
  },
  {
    user: User.all.sample,
    name: 'Pedro',
    specialty: 'Translator',
    age: 5,
    price: rand(5..50),
    location: Faker::Address.city,
    description: "Will help you with all your linguistic needs. Pretends that know Mandarin, English, Brazilian Portuguese, Italian, still trying to learn Portugal Portuguese he knows it all. Just ask for any portuguese slang. Came from Joao Pessoa by boat. But actually in a secret mission to get back the gold and sugar that was stolen.--",
    remote_photo_url: 'https://media.giphy.com/media/5nbDREevWNzakKPmCV/giphy.gif'
  },
  {
    user: User.all.sample,
    name: 'Jojo',
    specialty: 'Marketing Consultant',
    age: 5,
    price: rand(5..50),
    location: Faker::Address.city,
    description: "A boss-meerkat.A carrer driving meerkat. Alergic to gluten. Has a bachelor at the Nova Meerkat university, an MBA at the Meerkat international business school.You can acess her linkedin page wwww.linkedin.com/Jojomeerkat. Her only defect it's to be very perfeccionist",
    remote_photo_url: 'https://media.giphy.com/media/7zutBuEYICzOO8Gbgy/giphy.gif'
  }
]


Meerkat.create!(meerkat_attributes)

puts 'Suricatos criados'
