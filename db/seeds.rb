# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).

User.destroy_all
Meerkat.destroy_all

User.create!(
    name: Faker::Name.unique.name,
    location: Faker::Address.city,
    description: 'I want to be a cool person, and I will 🌼',
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

puts 'Created users'

meerkat_attributes = [
  {
    user: User.all.sample,
    name: 'Antonio',
    specialty: 'Cook',
    age: rand(1..17),
    price: rand(5..50),
    location: Faker::Address.city,
    description: "The best Meerkat-chef you'll ever hire. Have loads of experience in cooking vegan food. In a special task to develop vegan meats, for him not be chosen as an ingredient. Special dishes include: Hakuna Matata Oven Batata. Alert: Be careful, sometimes it will eat the food that he coocked. No leftovers.",
    remote_photo_url: 'https://media1.popsugar-assets.com/files/thumbor/Si5yKTEVd81dd7akJpOow4bPYJE/fit-in/1200x630/filters:format_auto-!!-:strip_icc-!!-:fill-!white!-/2019/02/08/998/n/1922564/a50235035c5e096f329fb3.66606650_.jpg'
  },
  {
    user: User.all.sample,
    name: 'Irene',
    specialty: 'Assassin',
    age: rand(1..17),
    price: rand(5..50),
    location: Faker::Address.city,
    description: "Learned with the master of meerkat martial arts, Shung Sun Tzu to defend against the predators, and Krav Maga. Put her knowledge to work as a rented assasin, if you want someone to be killed call her. Get a special edge with this cute but killer meerkat. She will leave your enemies in the dust. Price may change depending of the sizes of the victims.",
    remote_photo_url: 'https://techcrunch.com/wp-content/uploads/2015/03/juvenile_meerkats_playfighting1.jpg?w=680'
  },
  {
    user: User.all.sample,
    name: 'Carolina',
    specialty: 'Fullstack programmer',
    age: rand(1..17),
    price: rand(5..50),
    location: Faker::Address.city,
    description: "Did a course of programing at the Le Wagon in the Botswana jungles. Badass in the front and the back -- end, we mean. Sometimes has to take a break to smoke her fancy eletronic cigarette.",
    remote_photo_url: 'https://media.mnn.com/assets/images/2017/06/closeup_meerkat_face.jpg.653x0_q80_crop-smart.jpg'
  },
  {
    user: User.all.sample,
    name: 'Pedro',
    specialty: 'Translator',
    age: rand(1..17),
    price: rand(5..50),
    location: Faker::Address.city,
    description: "Will help you with all your linguistic needs. Pretends to know Mandarin, English, Brazilian Portuguese, Italian, still trying to learn Portugal Portuguese he knows it all. Just ask for any portuguese slang. Came from Joao Pessoa by boat. But actually in a secret mission to get back the gold and sugar that was stolen.--",
    remote_photo_url: 'https://africageographic.com/wp-content/uploads/2018/01/Meerkat-face-1.jpg'
  },
  {
    user: User.all.sample,
    name: 'Jojo',
    specialty: 'Marketing Consultant',
    age: rand(1..17),
    price: rand(5..50),
    location: Faker::Address.city,
    description: "A boss-meerkat.A carrer driving meerkat. Alergic to gluten. Has a bachelor at the Nova Meerkat university, an MBA at the Meerkat International Business School.You can acess her linkedin page wwww.linkedin.com/jojomeerkat. Her only defect is perfeccionism.",
    remote_photo_url: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR-naaGNB9W-OqP0k4r5GT4DNGk84rXdpGWYWDEah_wOjoGUFdVHw'
  },
  {
    user: User.all.sample,
    name: 'Lolita',
    specialty: 'Poser for Life',
    age: 8,
    price: rand(5..50),
    location: Faker::Address.city,
    description: "She's a millennial & a star. Half italian, half french, she's was in the right position to embody both dolce far niente and je ne sais quoi. She loves Instagram, eating fancy food and going to private swimming pools. If you need some company and someone to pose with for some photos - Lolita is the one to call.",
    remote_photo_url: 'https://i.redd.it/p9e26fsrxvuy.jpg'
  },
  {
    user: User.all.sample,
    name: 'Gracindo',
    specialty: 'Peacemaker',
    age: rand(1..17),
    price: rand(5..50),
    location: Faker::Address.city,
    description: "If you have any conflict with someone, do call Gracindo. Top conflict mediator, conflict coaching and conflict consultant you will ever meet. He's insanely bomb ass effective in conflict resolution. He won't solve the world problems, but surely will solve yours! Have faith. Breath in, breath out.",
    remote_photo_url: 'https://cdn.wallpapersafari.com/84/34/tdR9Xv.jpg'
  },
  {
    user: User.all.sample,
    name: 'Maria',
    specialty: 'Grandma',
    age: 17,
    price: rand(5..50),
    location: Faker::Address.city,
    description: "She's the best nanny. She had 29 children in young years but they'r all grown ups by now and she still feels like taking care of kids. She's also an excellet cook. So cute, so perfect, so grandma.",
    remote_photo_url: 'https://thumbs-prod.si-cdn.com/H4aj35M4otBdVlIuAttiSMUNids=/800x600/filters:no_upscale()/https://public-media.si-cdn.com/filer/Surprising-Science-meerkat-alpha-females.jpg'
  }
]

Meerkat.create!(meerkat_attributes)

puts 'Meerkats created!'
