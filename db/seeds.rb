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
    name: 'Sylvester',
    specialty: 'Personal Trainer',
    age: rand(2..17),
    price: rand(5..70),
    location: Faker::Address.city,
    description: "Want to lose weight? Want to gain some good muscle? Sylvester is a crossfit, guy who will take you to the limit. He is also an actor, director, screenwriter, and producer. Give him a challenge and he's there.",
    remote_photo_url: 'https://i.postimg.cc/xdzCVdkC/rambo.jpg'
  },
  {
    user: User.all.sample,
    name: 'Gisela',
    specialty: 'Haistylist',
    age: rand(2..17),
    price: rand(5..70),
    location: Faker::Address.city,
    description: "Crazy good hairstylist! She loves cutting boy's long hair and helping them become more decent, never losing their charm. She started her early career cutting hair to her entire village of 5 628 meerkats. As you can see, experience is something not missing, guys. She will do her best and her best is in fact THE BEST.",
    remote_photo_url: 'https://i.postimg.cc/NFWf5q2D/hairdresser.jpg'
  },
  {
    user: User.all.sample,
    name: 'Pedro',
    specialty: 'Translator',
    age: rand(2..17),
    price: rand(5..70),
    location: Faker::Address.city,
    description: "Will help you with all your linguistic needs. Pretends to know Mandarin, English, Brazilian Portuguese, Italian, still trying to learn Portugal Portuguese he knows it all. Just ask for any portuguese slang. Came from Joao Pessoa by boat. But actually in a secret mission to get back the gold and sugar that was stolen.--",
    remote_photo_url: 'https://africageographic.com/wp-content/uploads/2018/01/Meerkat-face-1.jpg'
  },
  {
    user: User.all.sample,
    name: 'Jojo',
    specialty: 'Marketing Consultant',
    age: rand(2..17),
    price: rand(5..70),
    location: Faker::Address.city,
    description: "A boss-meerkat.A carrer driving meerkat. Alergic to gluten. Has a bachelor at the Nova Meerkat university, an MBA at the Meerkat International Business School.You can acess her linkedin page wwww.linkedin.com/jojomeerkat. Her only defect is perfeccionism.",
    remote_photo_url: 'https://nationalzoo.si.edu/sites/default/files/animals/meerkat-001.jpg'
  },
  {
    user: User.all.sample,
    name: 'Antonio',
    specialty: 'Cook',
    age: rand(2..17),
    price: rand(5..70),
    location: Faker::Address.city,
    description: "The best Meerkat-chef you'll ever hire. Have loads of experience in cooking vegan food. In a special task to develop vegan meats, for him not be chosen as an ingredient. Special dishes include: Hakuna Matata Oven Batata. Alert: Be careful, sometimes it will eat the food that he coocked. No leftovers.",
    remote_photo_url: 'https://i.postimg.cc/cJYf6vGP/cook2.jpg'
  },
  {
    user: User.all.sample,
    name: 'Lolita',
    specialty: 'Poser for Life',
    age: 8,
    price: rand(5..70),
    location: Faker::Address.city,
    description: "She's a millennial & a star. Half italian, half french, she's was in the right position to embody both dolce far niente and je ne sais quoi. She loves Instagram, eating fancy food and going to private swimming pools. If you need some company and someone to pose with for some photos - Lolita is the one to call.",
    remote_photo_url: 'https://i.postimg.cc/VkJqQ7Gf/lolita.jpg'
  },
  {
    user: User.all.sample,
    name: 'Irene',
    specialty: 'Assassin',
    age: rand(2..17),
    price: rand(5..70),
    location: Faker::Address.city,
    description: "Learned with the master of meerkat martial arts, Shung Sun Tzu to defend against the predators, and Krav Maga. Put her knowledge to work as a rented assasin, if you want someone to be killed call her. Get a special edge with this cute but killer meerkat. She will leave your enemies in the dust. Price may change depending of the sizes of the victims.",
    remote_photo_url: 'https://techcrunch.com/wp-content/uploads/2015/03/juvenile_meerkats_playfighting1.jpg?w=680'
  },
  {
    user: User.all.sample,
    name: 'Carolina',
    specialty: 'Fullstack programmer',
    age: rand(2..17),
    price: rand(5..70),
    location: Faker::Address.city,
    description: "Did a course of programing at the Le Wagon in the Botswana jungles. Badass in the front and the back -- end, we mean. Sometimes has to take a break to smoke her fancy eletronic cigarette.",
    remote_photo_url: 'https://i.postimg.cc/ZqLjTJv8/programmer.jpg'
  },
  {
    user: User.all.sample,
    name: 'Ulrik',
    specialty: 'Bumgee Jumper',
    age: 14,
    price: rand(5..70),
    location: Faker::Address.city,
    description: "OMG. It's the craziest norwegian meerkat, hell famous worldwide. It has adrenaline in his veins (natural one, doesn't take drugs) and a heart of gold. His mamma always told him: go with the flow, darling. Thus, he was married 8 times. Met 7 out of 8 wives in the air or right after touching the ground again.",
    remote_photo_url: 'https://i.postimg.cc/Nff8bGRr/bungee.jpg'
  },
  {
    user: User.all.sample,
    name: 'Gracindo',
    specialty: 'Peacemaker',
    age: rand(2..17),
    price: rand(5..70),
    location: Faker::Address.city,
    description: "If you have any conflict with someone, do call Gracindo. Top conflict mediator, conflict coaching and conflict consultant you will ever meet. He's insanely bomb ass effective in conflict resolution. He won't solve the world problems, but surely will solve yours! Have faith. Breath in, breath out.",
    remote_photo_url: 'https://i.postimg.cc/TwJmqBw9/peace.jpg'
  },
  {
    user: User.all.sample,
    name: 'Raikkonen',
    specialty: 'Party wild beast',
    age: 13,
    price: 999,
    location: Faker::Address.city,
    description: "Ex-Formula Meerkat 1 racing driver. Very used to be flattered and don't give a sh*t about it. Old, but a hell of a dancer these days away from the auto stuff. He is always eager to party: Lux, Main, K Urban Beach, Bliss, you name the place you wanna meet him! Expect a cheerful. This meerkat has personality, don't take him for granted. Dance until the night fever is over.",
    remote_photo_url: 'https://i.postimg.cc/RhCtPGJz/wildbeast.jpg'
  },
  {
    user: User.all.sample,
    name: 'Maria',
    specialty: 'Grandma',
    age: 17,
    price: rand(5..70),
    location: Faker::Address.city,
    description: "She's the best nanny. She had 29 children in young years but they'r all grown ups by now and she still feels like taking care of kids. She's also an excellet cook. So cute, so perfect, so grandma.",
    remote_photo_url: 'https://i.postimg.cc/2jThqpgj/grandma.jpg'
  }
]

Meerkat.create!(meerkat_attributes)

puts 'Meerkats created!'
