# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user_admin = User.create(email:"admin@gmail.com", password: "admin2018")



user_regular = User.create(pseudo: "Nico", email:"nico@gmail.com", password: "coucou")
user_regular2 = User.create(pseudo: "Samba", email:"samba@gmail.com", password: "coucou")
user_regular3 = User.create(pseudo: "Justine", email:"justine@gmail.com", password: "coucou")
user_regular4 = User.create(pseudo: "Sylvain", email:"sylvain@gmail.com", password: "coucou")
user_regular5 = User.create(pseudo: "Louis", email:"louis@gmail.com", password: "coucou")


user_dacruz = User.create(pseudo: "Dacruz", email:"dacruz@gmail.com", password:"coucou", artist: true)
user_ren = User.create(pseudo: "Ren", email: "ren@gmail.com", password:"coucou", artist: true)
user_sanetwo = User.create(pseudo: "Sanetwo", email: "sanetwo@gmail.com", password:"coucou", artist: true)


artwork1 = Artwork.create(title:"Une super oeuvre d'art", lat: "48.8879012", long: "2.384519")
artwork2 = Artwork.create(title:"Une chouette oeuvre d'art", lat: "48.8897974", long: "2.3846279")
artwork3 = Artwork.create(title:"Une incroyable oeuvre d'art", lat: "48.8897424", long: "2.3844968")

picture1 = Picture.create(remote_img_url_url: "http://res.cloudinary.com/creapolis/image/upload/v1521038222/image1.jpg", artwork: artwork1, user: user_regular)
picture2 = Picture.create(remote_img_url_url: "http://res.cloudinary.com/creapolis/image/upload/v1521038228/image2.jpg", artwork: artwork2, user: user_regular)
picture3 = Picture.create(remote_img_url_url: "http://res.cloudinary.com/creapolis/image/upload/v1521038233/image3.jpg", artwork: artwork3, user: user_regular)
picture4 = Picture.create(remote_img_url_url: "http://res.cloudinary.com/creapolis/image/upload/v1521038233/image3.jpg", artwork: artwork1, user: user_regular2)
picture5 = Picture.create(remote_img_url_url: "http://res.cloudinary.com/creapolis/image/upload/v1521038222/image1.jpg", artwork: artwork1, user: user_regular3)
picture6 = Picture.create(remote_img_url_url: "http://res.cloudinary.com/creapolis/image/upload/v1521038222/image1.jpg", artwork: artwork1, user: user_regular4)


artwork1.users << user_dacruz

artwork2.users << user_ren

artwork3.users << user_sanetwo


########### Creation d'une premier itinéraire #########################

artwork7 = Artwork.create(lat:	"48.7957898",	long:"2.3999439", artist: "Alice Pasqualini", style:"Spray")
artwork8 = Artwork.create(lat:	"48.797455", long:"2.3996301", artist: "Fake et C215", style: "Spray, Pochoir, Acrylique")
artwork9 = Artwork.create(lat:	"48.7996741",	long:"2.400726", artist: "Pixel Pancho",style:"Acrylique")
artwork10 = Artwork.create( lat:	"48.7995955",long:"	2.400821", artist: "Fin DAC", style: "Pochoir")
artwork11 = Artwork.create( lat:	"48.8000522",	long:"2.4014577", artist: "Bebar", style: "Spray")
artwork12 = Artwork.create( lat:	"48.8009982",	long:"2.4025318", artist: "Pixel Pancho", style:"Acrylique")
artwork13 = Artwork.create(lat:	"48.7940485",	long:"2.3964596", artist: "Stew", style:"Pochoir")
artwork14 =Artwork.create(lat:	"48.7934179",	long:"2.3959358", artist: "Roa", style:"Spray")
artwork15 =Artwork.create(lat:	"48.7980213",	long:"2.39928483", artist: "C215", style:"Pochoir, Spray")
artwork16 =Artwork.create(lat:	"48.7938571",	long:"2.3993399", artist: "Meushay et Nosbé", style:"Spray")
artwork17 =Artwork.create(lat:	"48.789351",long:"2.3904885", artist: "MADC", style:"Spray")
artwork18 = Artwork.create( lat:	"48.790496",	long:"2.388982", artist: "Docteur Bergman", style:"Pochoir")
artwork19 = Artwork.create( lat:	"48.791128",	long:"2.389571", artist: "Kouka", style:"Acrylique")
artwork20 = Artwork.create( lat:	"48.7917342",	long:"2.3891235", artist: "Kenji", style:"Spray")
artwork21 = Artwork.create( lat:	"48.7925282",	long:"2.3962301", artist: "Nychos")
artwork22 = Artwork.create( lat:	"48.7916606",	long:"2.3897027", artist: "Céleste Java", style:"Spray")
artwork23 = Artwork.create( lat:	"48.7914197",	long:"2.3907833", artist: "Takt et Mantra" , style:"Spray")
artwork24 = Artwork.create( lat:	"48.7904097",	long:"2.3929597", artist: "Astro", style:"Spray, Acrylique")
artwork25 = Artwork.create( lat:	"48.790398",long:"2.392582", artist: "Hopare, Alex, Brok")
artwork26 = Artwork.create( lat:	"48.7895618",	long:"2.3927548"	, artist: "exta", style:"Acrylique")
artwork27 = Artwork.create( lat:	"48.7937833", long:"2.3987197", artist: "C215", style:"Pochoir")
artwork28 = Artwork.create( lat:	"48.793686",long:"2.398176", artist: "Fin DAC", style:"Pochoir")
artwork29 = Artwork.create( lat:	"48.788187",	long:"2.39161", artist: "David Walker", style:"Spray")
artwork30 = Artwork.create( lat:	"48.7884167",	long:"2.3912654", artist: "Philippe Baudeloque", style:"Craie")
artwork31 = Artwork.create( lat:	"48.7937218",	long:"2.3973139", artist: "Indigo", style:"Pochoir")
artwork32 = Artwork.create( lat:	"48.7938285",	long:"2.3972656", artist: "C215")
artwork33 = Artwork.create( lat:	"48.7890078",	long:"2.3907706", artist: "Sly2", style:"Spray")
artwork34 = Artwork.create( lat:	"48.7890078",	long:"2.3907706", artist: "C215", style:"Pochoir")


picture7 = Picture.create(remote_img_url_url: "http://res.cloudinary.com/creapolis/image/upload/DSC_0742.JPG",user: user_admin, artwork: artwork7)
picture8 = Picture.create(remote_img_url_url: "http://res.cloudinary.com/creapolis/image/upload/DSC_0735.JPG", user: user_admin, artwork: artwork8)
picture9 = Picture.create(remote_img_url_url: "http://res.cloudinary.com/creapolis/image/upload/DSC_0730.JPG", user: user_admin, artwork: artwork9)
picture10 = Picture.create(remote_img_url_url: "http://res.cloudinary.com/creapolis/image/upload/DSC_0729.JPG",user: user_admin, artwork: artwork10)
picture11 = Picture.create(remote_img_url_url: "http://res.cloudinary.com/creapolis/image/upload/DSC_0728.JPG",user: user_admin, artwork: artwork11)
picture12 = Picture.create(remote_img_url_url: "http://res.cloudinary.com/creapolis/image/upload/DSC_0702.JPG",user: user_admin, artwork: artwork12)
picture13 = Picture.create(remote_img_url_url: "http://res.cloudinary.com/creapolis/image/upload/IMG_8739.JPG",user: user_admin, artwork: artwork13)
picture14 = Picture.create(remote_img_url_url: "http://res.cloudinary.com/creapolis/image/upload/DSC_0754.JPG", user: user_admin, artwork: artwork14)
picture15 = Picture.create(remote_img_url_url: "http://res.cloudinary.com/creapolis/image/upload/DSC_0733.JPG", user: user_admin, artwork: artwork15)
picture16 = Picture.create(remote_img_url_url: "http://res.cloudinary.com/creapolis/image/upload/DSC_0746.JPG", user: user_admin, artwork: artwork16)
picture17 = Picture.create(remote_img_url_url: "http://res.cloudinary.com/creapolis/image/upload/FILE2405.CHK",user: user_admin, artwork: artwork17)
picture18 = Picture.create(remote_img_url_url: "http://res.cloudinary.com/creapolis/image/upload/DSC_0903.JPG",user: user_admin, artwork: artwork18)
picture19 = Picture.create(remote_img_url_url: "http://res.cloudinary.com/creapolis/image/upload/DSC_0901.JPG",user: user_admin, artwork: artwork19)
picture20 = Picture.create(remote_img_url_url: "http://res.cloudinary.com/creapolis/image/upload/DSC_0776.JPG",user: user_admin, artwork: artwork20)
picture21 = Picture.create(remote_img_url_url: "http://res.cloudinary.com/creapolis/image/upload/DSC_0758.JPG",user: user_admin, artwork: artwork21)
picture22 = Picture.create(remote_img_url_url: "http://res.cloudinary.com/creapolis/image/upload/DSC_0773.JPG",user: user_admin, artwork: artwork22)
picture23 = Picture.create(remote_img_url_url: "http://res.cloudinary.com/creapolis/image/upload/DSC_0770.JPG",user: user_admin, artwork: artwork23)
picture24 = Picture.create(remote_img_url_url: "http://res.cloudinary.com/creapolis/image/upload/DSC_0779.JPG",user: user_admin, artwork: artwork24)
picture25 = Picture.create(remote_img_url_url: "http://res.cloudinary.com/creapolis/image/upload/DSC_0890.JPG",user: user_admin, artwork: artwork25)
picture26 = Picture.create(remote_img_url_url: "http://res.cloudinary.com/creapolis/image/upload/DSC_0780.JPG",user: user_admin, artwork: artwork26)
picture27 = Picture.create(remote_img_url_url: "http://res.cloudinary.com/creapolis/image/upload/FILE2551.CHK",user: user_admin, artwork: artwork27)
picture28 = Picture.create(remote_img_url_url: "http://res.cloudinary.com/creapolis/image/upload/DSC_0749.JPG",user: user_admin, artwork: artwork28)
picture29 = Picture.create(remote_img_url_url: "http://res.cloudinary.com/creapolis/image/upload/DSC_0861.JPG",user: user_admin, artwork: artwork29)
picture30 = Picture.create(remote_img_url_url: "http://res.cloudinary.com/creapolis/image/upload/DSC_0898.JPG",user: user_admin, artwork: artwork30)
picture31 = Picture.create(remote_img_url_url: "http://res.cloudinary.com/creapolis/image/upload/DSC_0752.JPG",user: user_admin, artwork: artwork31)
picture32 = Picture.create(remote_img_url_url: "http://res.cloudinary.com/creapolis/image/upload/DSC_0753.JPG",user: user_admin, artwork: artwork32)
picture33 = Picture.create(remote_img_url_url: "http://res.cloudinary.com/creapolis/image/upload/DSC_0840.JPG",user: user_admin, artwork: artwork33)
picture34 = Picture.create(remote_img_url_url: "http://res.cloudinary.com/creapolis/image/upload/DSC_0841.JPG",user: user_admin, artwork: artwork34)