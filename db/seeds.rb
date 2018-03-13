# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user_regular = User.create(pseudo: "Nico", email:"nico@gmail.com", password: "coucou")

user_dacruz = User.create(pseudo: "Dacruz", email:"dacruz@gmail.com", password:"coucou", artist: true)
user_ren = User.create(pseudo: "Ren", email: "ren@gmail.com", password:"coucou", artist: true)
user_sanetwo = User.create(pseudo: "Sanetwo", email: "ren@gmail.com", password:"coucou", artist: true)

artwork1 = Artwork.create(title:"Une super oeuvre d'art", lat: "48.8879012", long: "2.384519")
artwork2 = Artwork.create(title:"Une chouette oeuvre d'art", lat: "48.8897974", long: "2.3846279")
artwork3 = Artwork.create(title:"Une incroyable oeuvre d'art", lat: "48.8897424", long: "2.3844968")

picture1 = Picture.create(img_url: "image1.jpg", artwork: artwork1, user: user_regular)
picture2 = Picture.create(img_url: "image2.jpg", artwork: artwork2, user: user_regular)
picture3 = Picture.create(img_url: "image3.jpg", artwork: artwork3, user: user_regular)



artwork1.users << user_dacruz

artwork2.users << user_ren

artwork3.users << user_sanetwo


