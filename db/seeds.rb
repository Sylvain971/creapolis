# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user = User.new(email:"test@gmail.com", password: "coucou")

dacruz = Artist.create(pseudo: "Dacruz")
ren = Artist.create(pseudo: "Ren")
sanetwo = Artist.create(pseudo: "Sanetwo")

artwork1 = Artwork.create(title:"Une super oeuvre d'art", lat: "48.8879012", long: "2.384519")
artwork2 = Artwork.create(title:"Une chouette oeuvre d'art", lat: "48.8897974", long: "2.3846279")
artwork3 = Artwork.create(title:"Une incroyable oeuvre d'art", lat: "48.8897424", long: "2.3844968")

picture1 = Picture.create(img_url: "image1.png", artwork: artwork1)
picture2 = Picture.create(img_url: "image2.png", artwork: artwork2)
picture3 = Picture.create(img_url: "image3.png", artwork: artwork3)



artwork1.artists << dacruz

artwork2.artists << ren

artwork3.artists << sanetwo


