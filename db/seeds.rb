user_admin = User.create(pseudo: "Admin", email:"admin@gmail.com", password: "admin2018", admin: true)

user_regular = User.create(pseudo: "Nico", email:"nico@gmail.com", password: "coucou", remote_profile_picture_url: "https://res.cloudinary.com/creapolis/image/upload/v1521715684/default_profile_picture.jpg")

user_c215 = User.create(pseudo: "C215", email:"c215@gmail.com", password:"coucou", artist: true,remote_profile_picture_url: "https://res.cloudinary.com/creapolis/image/upload/v1521715684/default_profile_picture.jpg", status: "validated")
user_fake = User.create(pseudo: "Fake", email:"fake@gmail.com", password:"coucou", artist: true, remote_profile_picture_url: "https://res.cloudinary.com/creapolis/image/upload/v1521715684/default_profile_picture.jpg", status: "validated")
user_alice = User.create(pseudo: "Alice Pasqualini", email:"alicepasqualini@gmail.com", password:"coucou", artist: true,  remote_profile_picture_url: "https://res.cloudinary.com/creapolis/image/upload/v1521715684/default_profile_picture.jpg", status: "validated")
user_findac = User.create(pseudo: "Fin DAC", email:"findak@gmail.com", password:"coucou", artist: true,  remote_profile_picture_url: "https://res.cloudinary.com/creapolis/image/upload/v1521715684/default_profile_picture.jpg", status: "validated")
user_pixel = User.create(pseudo: "Pixel Pancho", email:"pixel@gmail.com", password:"coucou", artist: true, remote_profile_picture_url: "https://res.cloudinary.com/creapolis/image/upload/v1521715684/default_profile_picture.jpg", status: "validated")
user_bebar = User.create(pseudo: "Bebar", email:"bebar@gmail.com", password:"coucou", artist: true,  remote_profile_picture_url: "https://res.cloudinary.com/creapolis/image/upload/v1521715684/default_profile_picture.jpg", status: "validated")
user_stew = User.create(pseudo: "Stew", email:"stew@gmail.com", password:"coucou", artist: true,  remote_profile_picture_url: "https://res.cloudinary.com/creapolis/image/upload/v1521715684/default_profile_picture.jpg", status: "validated")
user_roa = User.create(pseudo: "Roa", email:"roa@gmail.com", password:"coucou", artist: true,  remote_profile_picture_url: "https://res.cloudinary.com/creapolis/image/upload/v1521715684/default_profile_picture.jpg", status: "validated")




########### Creation d'un premier itinéraire #########################

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
artwork17 =Artwork.create(lat:	"48.789351", long:"2.3904885", artist: "MADC", style:"Spray")
artwork18 = Artwork.create( lat:	"48.790496", long:"2.388982", artist: "Docteur Bergman", style:"Pochoir")
artwork19 = Artwork.create( lat:	"48.791128",	long:"2.389571", artist: "Kouka", style:"Acrylique")
artwork20 = Artwork.create( lat:	"48.7917342",	long:"2.3891235", artist: "Kenji", style:"Spray")
artwork21 = Artwork.create( lat:	"48.7925282",	long:"2.3962301", artist: "Nychos")
artwork22 = Artwork.create( lat:	"48.7916606",	long:"2.3897027", artist: "Céleste Java", style:"Spray")
artwork23 = Artwork.create( lat:	"48.7914197",	long:"2.3907833", artist: "Takt et Mantra" , style:"Spray")
artwork24 = Artwork.create( lat:	"48.7904097",	long:"2.3929597", artist: "Astro", style:"Spray, Acrylique")
artwork25 = Artwork.create( lat:	"48.790398",long:"2.392582", artist: "Hopare, Alex, Brok")
artwork26 = Artwork.create( lat:	"48.7895618",	long:"2.3927548", artist: "exta", style:"Acrylique")
artwork27 = Artwork.create( lat:	"48.7937833", long:"2.3987197", artist: "C215", style:"Pochoir")
artwork28 = Artwork.create( lat:	"48.793686", long:"2.398176", artist: "Fin DAC", style:"Pochoir")
artwork29 = Artwork.create( lat:	"48.788187",	long:"2.39161", artist: "David Walker", style:"Spray")
artwork30 = Artwork.create( lat:	"48.7884167",	long:"2.3912654", artist: "Philippe Baudeloque", style:"Craie")
artwork31 = Artwork.create( lat:	"48.7937218",	long:"2.3973139", artist: "Indigo", style:"Pochoir")
artwork32 = Artwork.create( lat:	"48.7938285",	long:"2.3972656", artist: "C215")
artwork33 = Artwork.create( lat:	"48.7890078",	long:"2.3907706", artist: "Sly2", style:"Spray")
artwork34 = Artwork.create( lat:	"48.7890078",	long:"2.3907706", artist: "C215", style:"Pochoir")

picture7 = Picture.create(remote_img_url_url: "https://res.cloudinary.com/creapolis/image/upload/DSC_0742.JPG",user: user_admin, artwork: artwork7)
picture8 = Picture.create(remote_img_url_url: "https://res.cloudinary.com/creapolis/image/upload/DSC_0735.JPG", user: user_admin, artwork: artwork8)
picture9 = Picture.create(remote_img_url_url: "https://res.cloudinary.com/creapolis/image/upload/DSC_0730.JPG", user: user_admin, artwork: artwork9)
picture10 = Picture.create(remote_img_url_url: "https://res.cloudinary.com/creapolis/image/upload/DSC_0729.JPG",user: user_admin, artwork: artwork10)
picture11 = Picture.create(remote_img_url_url: "https://res.cloudinary.com/creapolis/image/upload/DSC_0728.JPG",user: user_admin, artwork: artwork11)
picture12 = Picture.create(remote_img_url_url: "https://res.cloudinary.com/creapolis/image/upload/DSC_0702.JPG",user: user_admin, artwork: artwork12)
picture13 = Picture.create(remote_img_url_url: "https://res.cloudinary.com/creapolis/image/upload/IMG_8739.JPG",user: user_admin, artwork: artwork13)
picture14 = Picture.create(remote_img_url_url: "https://res.cloudinary.com/creapolis/image/upload/DSC_0754.JPG", user: user_admin, artwork: artwork14)
picture15 = Picture.create(remote_img_url_url: "https://res.cloudinary.com/creapolis/image/upload/DSC_0733.JPG", user: user_admin, artwork: artwork15)
picture16 = Picture.create(remote_img_url_url: "https://res.cloudinary.com/creapolis/image/upload/DSC_0746.JPG", user: user_admin, artwork: artwork16)
#picture17 = Picture.create(remote_img_url_url: "http://res.cloudinary.com/creapolis/image/upload/FILE2405.JPG",user: user_admin, artwork: artwork17)
picture18 = Picture.create(remote_img_url_url: "https://res.cloudinary.com/creapolis/image/upload/DSC_0903.JPG",user: user_admin, artwork: artwork18)
picture19 = Picture.create(remote_img_url_url: "https://res.cloudinary.com/creapolis/image/upload/DSC_0901.JPG",user: user_admin, artwork: artwork19)
picture20 = Picture.create(remote_img_url_url: "https://res.cloudinary.com/creapolis/image/upload/DSC_0776.JPG",user: user_admin, artwork: artwork20)
picture21 = Picture.create(remote_img_url_url: "https://res.cloudinary.com/creapolis/image/upload/DSC_0758.JPG",user: user_admin, artwork: artwork21)
picture22 = Picture.create(remote_img_url_url: "https://res.cloudinary.com/creapolis/image/upload/DSC_0773.JPG",user: user_admin, artwork: artwork22)
picture23 = Picture.create(remote_img_url_url: "https://res.cloudinary.com/creapolis/image/upload/DSC_0770.JPG",user: user_admin, artwork: artwork23)
picture24 = Picture.create(remote_img_url_url: "https://res.cloudinary.com/creapolis/image/upload/DSC_0779.JPG",user: user_admin, artwork: artwork24)
picture25 = Picture.create(remote_img_url_url: "https://res.cloudinary.com/creapolis/image/upload/DSC_0890.JPG",user: user_admin, artwork: artwork25)
picture26 = Picture.create(remote_img_url_url: "https://res.cloudinary.com/creapolis/image/upload/DSC_0780.JPG",user: user_admin, artwork: artwork26)
#picture27 = Picture.create(remote_img_url_url: "http://res.cloudinary.com/creapolis/image/upload/FILE2551.JPG",user: user_admin, artwork: artwork27)
picture28 = Picture.create(remote_img_url_url: "https://res.cloudinary.com/creapolis/image/upload/DSC_0749.JPG",user: user_admin, artwork: artwork28)
picture29 = Picture.create(remote_img_url_url: "https://res.cloudinary.com/creapolis/image/upload/DSC_0861.JPG",user: user_admin, artwork: artwork29)
picture30 = Picture.create(remote_img_url_url: "https://res.cloudinary.com/creapolis/image/upload/DSC_0898.JPG",user: user_admin, artwork: artwork30)
picture31 = Picture.create(remote_img_url_url: "https://res.cloudinary.com/creapolis/image/upload/DSC_0752.JPG",user: user_admin, artwork: artwork31)
picture32 = Picture.create(remote_img_url_url: "https://res.cloudinary.com/creapolis/image/upload/DSC_0753.JPG",user: user_admin, artwork: artwork32)
picture33 = Picture.create(remote_img_url_url: "https://res.cloudinary.com/creapolis/image/upload/DSC_0840.JPG",user: user_admin, artwork: artwork33)
picture34 = Picture.create(remote_img_url_url: "https://res.cloudinary.com/creapolis/image/upload/DSC_0841.JPG",user: user_admin, artwork: artwork34)

route1 = Route.create(title:"Vitry-sur-Seine : un musée à ciel ouvert", description: "Depuis l'installation de l'artiste français C215 à Vitry, des artistes de renom ont laissé leur marque dans la ville. Déambulez dans les rues et laissez-vous suprendre par ces nombreuses oeuvres d'arts.")
route1.artworks << artwork9
route1.artworks << artwork7
route1.artworks << artwork8
route1.artworks << artwork10
route1.artworks << artwork11
route1.artworks << artwork12
route1.artworks << artwork13
route1.artworks << artwork14
route1.artworks << artwork15
route1.artworks << artwork16
#route1.artworks << artwork17
route1.artworks << artwork18
route1.artworks << artwork19
route1.artworks << artwork20
route1.artworks << artwork21
route1.artworks << artwork22
route1.artworks << artwork23
route1.artworks << artwork24
route1.artworks << artwork25
route1.artworks << artwork26
#route1.artworks << artwork27
route1.artworks << artwork28
route1.artworks << artwork29
route1.artworks << artwork30
route1.artworks << artwork31
route1.artworks << artwork32
route1.artworks << artwork33
route1.artworks << artwork34

artwork7.artists << user_alice
artwork8.artists << user_c215
artwork8.artists << user_fake
artwork9.artists << user_pixel
artwork10.artists << user_findac
artwork11.artists << user_bebar
artwork12.artists << user_pixel
artwork13.artists << user_stew
artwork14.artists << user_roa
artwork15.artists << user_c215
artwork27.artists << user_c215
artwork28.artists << user_findac
artwork32.artists << user_c215
artwork34.artists << user_c215

########### Creation d'un second itinéraire #########################

artwork235 = Artwork.create(lat:	"48.8888246",	long:"2.3862783", artist: "Kan", style:"Pointillisme")
artwork236 = Artwork.create(lat:	"48.8888929",	long:"2.3862783", artist: "Hopare", style:"Spray")
artwork237	= Arwtork.create(lat:"48.8889147", long:"2.3866363", artist: "Sanetwo", style:"Spray")
artwork238	= Arwtork.create(lat:"48.8889498", long:"2.3867836", artist: "dACruZ", style:"Spray")
artwork239	= Arwtork.create(lat:"48.8889498", long:"2.3867836", artist: "Marko 93", style:"Spray")
artwork240	= Arwtork.create(lat:"48.889015", long:"2.3870513", artist: "Batsh", style:"Spray")
artwork241	= Arwtork.create(lat:"48.8890441", long:"2.3871679", artist: "Astro", style:"3D")
artwork242	= Arwtork.create(lat:"48.8890703", long:"2.387267	", artist: "Kouka")
artwork243	= Arwtork.create(lat:"48.8891041", long:"2.3873925", artist: "Shaka")
artwork244	= Arwtork.create(lat:"48.8877467", long:"2.3845599", artist: "dACruZ", style:"Spray")
artwork245	= Arwtork.create(lat:"48.8898873", long:"2.3839414", artist: "Ren1", style:"Spray")
artwork246	= Arwtork.create(lat:"48.8869263", long:"2.3847632", artist: "Big Bruno", style:"Spray")
artwork247	= Arwtork.create(lat:"48.8870072", long:"2.3847442", artist: "Marko 93")
artwork248	= Arwtork.create(lat:"48.8870797", long:"2.3847258", artist: "Doudou Style")
artwork249 = Artwork.create(lat:"48.8888247", long:"2.3840232", artist:	"dACruZ",style:"Spray")
artwork250	= Arwtork.create(lat:"48.8888247", long:"2.3840232", artist: "dACruZ",style:"Spray")
artwork251	= Arwtork.create(lat:"48.890078", long:"2.3850632", artist: "Kan",style:"Spray")
artwork252	= Arwtork.create(lat:"48.8901641", long:"2.3849997", artist: "Shaka",style:"Spray")
artwork253	= Arwtork.create(lat:"48.8902543", long:"2.3849333", artist: "Pittore",style:"Spray, Acrylique")

picture235 = Picture.create(remote_img_url_url: "https://res.cloudinary.com/creapolis/image/upload/v1528534459/IMG_01.jpg", user: user_admin, artwork: artwork235)
picture236 = Picture.create(remote_img_url_url: "https://res.cloudinary.com/creapolis/image/upload/v1528534455/IMG_02.jpg", user: user_admin, artwork: artwork236)
picture237 = Picture.create(remote_img_url_url: "https://res.cloudinary.com/creapolis/image/upload/v1528534455/IMG_03.jpg", user: user_admin, artwork: artwork237)
picture238 = Picture.create(remote_img_url_url: "https://res.cloudinary.com/creapolis/image/upload/v1528534455/IMG_04.jpg", user: user_admin, artwork: artwork238)
picture239 = Picture.create(remote_img_url_url: "https://res.cloudinary.com/creapolis/image/upload/v1528534456/IMG_05.jpg", user: user_admin, artwork: artwork239)
picture240 = Picture.create(remote_img_url_url: "https://res.cloudinary.com/creapolis/image/upload/v1528534455/IMG_06.jpg", user: user_admin, artwork: artwork240)
picture241 = Picture.create(remote_img_url_url: "https://res.cloudinary.com/creapolis/image/upload/v1528534456/IMG_07.jpg", user: user_admin, artwork: artwork241)
picture242 = Picture.create(remote_img_url_url: "https://res.cloudinary.com/creapolis/image/upload/v1528534456/IMG_08.jpg", user: user_admin, artwork: artwork242)
picture243 = Picture.create(remote_img_url_url: "https://res.cloudinary.com/creapolis/image/upload/v1528534457/IMG_09.jpg", user: user_admin, artwork: artwork243)
picture244 = Picture.create(remote_img_url_url: "https://res.cloudinary.com/creapolis/image/upload/v1528534458/IMG_10.jpg", user: user_admin, artwork: artwork244)
picture245 = Picture.create(remote_img_url_url: "https://res.cloudinary.com/creapolis/image/upload/v1528534461/IMG_11.jpg", user: user_admin, artwork: artwork245)
picture246 = Picture.create(remote_img_url_url: "https://res.cloudinary.com/creapolis/image/upload/v1528534458/IMG_12.jpg", user: user_admin, artwork: artwork246)
picture247 = Picture.create(remote_img_url_url: "https://res.cloudinary.com/creapolis/image/upload/v1528534460/IMG_13.jpg", user: user_admin, artwork: artwork247)
picture248 = Picture.create(remote_img_url_url: "https://res.cloudinary.com/creapolis/image/upload/v1528534459/IMG_14.jpg", user: user_admin, artwork: artwork248)
picture249 = Picture.create(remote_img_url_url: "https://res.cloudinary.com/creapolis/image/upload/v1528534461/IMG_17.jpg", user: user_admin, artwork: artwork249)
picture250 = Picture.create(remote_img_url_url: "https://res.cloudinary.com/creapolis/image/upload/v1528534467/IMG_18.jpg", user: user_admin, artwork: artwork250)
picture251 = Picture.create(remote_img_url_url: "https://res.cloudinary.com/creapolis/image/upload/v1528534458/IMG_20.jpg", user: user_admin, artwork: artwork252)
picture252 = Picture.create(remote_img_url_url: "https://res.cloudinary.com/creapolis/image/upload/v1528534457/IMG_21.jpg", user: user_admin, artwork: artwork253)
picture253 = Picture.create(remote_img_url_url: "https://res.cloudinary.com/creapolis/image/upload/v1528534517/IMG_22.jpg", user: user_admin, artwork: artwork254)

route2 = Route.create(title:"Ourcq living Colors par Cultures Pas Sages", description: "dACruZ et son association interviennent depuis de nombreuses années à Ourcq, partez à la découverte de ce coin haut en couleur du XIXe arrondissement.")
route2.artworks << artwork235
route2.artworks << artwork236
route2.artworks << artwork237
route2.artworks << artwork238
route2.artworks << artwork239
route2.artworks << artwork240
route2.artworks << artwork241
route2.artworks << artwork242
route2.artworks << artwork243
route2.artworks << artwork244
route2.artworks << artwork245
route2.artworks << artwork246
route2.artworks << artwork247
route2.artworks << artwork248
route2.artworks << artwork249
route2.artworks << artwork250
route2.artworks << artwork251
route2.artworks << artwork252
route2.artworks << artwork253