# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Place.destroy_all
Category.destroy_all
User.destroy_all
ActsAsTaggableOn::Tag.destroy_all

categories = [
  "Restaurant",
  "Bar",
  "Cafe",
  "Groceries",
  "Clothing and Fabrics",
  "Beauty and Wellness"
]

categories.each do |cat|
  Category.create(name: cat)
end


puts "Creating users for business owners"
#business owner users
dani = User.create!(
  email: "dani@amandla.com",
  password: "password",
  first_name: "Dani",
  last_name: "Domingo",
  about: "Proud vegetarian taco maker, trying to lighten my load on the planet"
)

file = URI.open('https://avatars0.githubusercontent.com/u/70454213?v=4')
dani.photo.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')
dani.save!

clau = User.create!(
  email: "clau@amandla.com",
  password: "password",
  first_name: "Clau",
  last_name: "Cherigny",
  about: "lover of all things real, natural and organic"
)

file = URI.open('https://image.freepik.com/free-photo/modern-woman-taking-selfie_23-2147893976.jpg')
clau.photo.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')
clau.save!

blanca = User.create!(
  email: "blanca@amandla.com",
  password: "password",
  first_name: "Blanca",
  last_name: "Puges",
  about: "Holistic nutritionist, I believe food is the only medicine we need"
)

file = URI.open('https://i.pinimg.com/originals/1b/d2/27/1bd227847cb695bdfb28ac551d988bc8.jpg')
blanca.photo.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')
blanca.save!

vanessa = User.create!(
  email: "vanessa@amandla.com",
  password: "password",
  first_name: "Vanessa",
  last_name: "Diaz",
  about: "There needs to be way more harmony between the beauty industry and nature. We hope to lead this charge"
)

file = URI.open('https://images14.eitb.eus/multimedia/recursos/participantes/concursantes/conquis2020/taldea1/vane.jpg')
vanessa.photo.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')
vanessa.save!


marc = User.create!(
  email: "marc@amandla.com",
  password: "password",
  first_name: "Marc",
  last_name: "Santi",
  about: "A strong desire to have a greater connection to, and awareness of, our food and the processes involved"
)

file = URI.open('https://oralmemories.com/wp-content/uploads/2017/09/Marc-Vives.png')
marc.photo.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')
marc.save!

lutz = User.create!(
  email: "lutz@amandla.com",
  password: "password",
  first_name: "Lutz",
  last_name: "Schwenke",
  about: "A passion for the ocean and environmental activism, trying to make clothing more sustainable"
)

file = URI.open('https://images.unsplash.com/photo-1599566150163-29194dcaad36?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=634&q=80')
lutz.photo.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')
lutz.save!

nasia = User.create!(
  email: "nasia@amandla.com",
  password: "password",
  first_name: "Nasia",
  last_name: "Burnet",
  about: "All about ethical living!"
)

file = URI.open('https://mumabroad.com/wp-content/uploads/2020/01/Nasia-Burnet-co-founder-Sukhi-handmade-rugs-by-women-for-women-social-impact-scaled-e1591982621294.jpg')
nasia.photo.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')
nasia.save!

pierre = User.create!(
  email: "pierre@amandla.com",
  password: "password",
  first_name: "Pierre",
  last_name: "Le Roux",
  about: "Coffee-obsessed husband and father. Want to keep serving the best coffees while ensuring the daughter can do the same one day"
)

file = URI.open('https://barcelona.reshapingwork.net/wp-content/uploads/2019/06/oscar-pierre.jpg')
pierre.photo.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')
pierre.save!

manu = User.create!(
  email: "manu@amandla.com",
  password: "password",
  first_name: "Manolo",
  last_name: "Caragol",
  about: "On a mission to prove that healthy, organic food is far from boring! Especially traditional Catalan cuisine"
)

file = URI.open('https://cadenaser00.epimg.net/ser/imagenes/2018/11/21/television/1542795828_843947_1542795968_noticia_normal.jpg')
manu.photo.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')
manu.save!

lisa = User.create!(
  email: "lisa@amandla.com",
  password: "password",
  first_name: "Lisa",
  last_name: "Rowe",
  about: "Inherited the family passion for coffee. Passionate women-rights activist and urban farmer"
)

file = URI.open('https://res.cloudinary.com/rickyschoeman/image/upload/v1613555058/WhatsApp_Image_2021-02-16_at_11.38.08_1_t6ufzp.jpg')
lisa.photo.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')
lisa.save!

malik = User.create!(
  email: "malik@amandla.com",
  password: "password",
  first_name: "Malik",
  last_name: "Soukri",
  about: "Background in finance, taking steps towards being more environmentally and socially sustainable"
)

file = URI.open('https://avatars2.githubusercontent.com/u/72385340?v=4')
malik.photo.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')
malik.save!


puts "Completed"

puts "Creating places"
fair_tacos = Place.create!(
    address: "Carrer del Torrent de l'Olla, 202, 08012 Barcelona",
    name: "Fair Tacos",
    category: Category.find_by_name("Restaurant"),
    user: dani,
    story: "Delicious, authentically-made vegetarian Tacos! Made with plenty of love and good vibes. Come join!"
)
fair_tacos.tag_list.add("Women owned", "Vegetarian")

# image related
file = URI.open('https://themerrythought.com/wp-content/uploads/IMG_6615.jpg')
fair_tacos.banner.attach(io: file, filename: 'nes.png', content_type: 'image/png')

file = URI.open('https://lataqueria.eu/wp-content/uploads/2020/08/passatge-font-thumbnail-new.jpg')
fair_tacos.photos.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')

file = URI.open('https://media-cdn.tripadvisor.com/media/photo-s/0e/19/5b/b5/img-20170108-104406-largejpg.jpg')
fair_tacos.photos.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')

file = URI.open('https://barcelona.lecool.com/files/2012/07/taqueria_dentro.jpg')
fair_tacos.photos.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')

fair_tacos.save!

hansel_and_granel = Place.create!(
    address: "Avinguda de la Riera de Cassoles, 08012 Barcelona",
    name: "Hansel & Granel",
    category: Category.find_by_name("Groceries"),
    user: clau,
    story: "I left behind 13 years of work in a non-profit foundation to set up Handsel y Granel a few months ago, an intimate and careful establishment that sells products in bulk."
)
hansel_and_granel.tag_list.add("Women owned", "Organic", "Fair trade")

# image related
file = URI.open('http://iaminthemoodforfood.com/wp-content/uploads/2015/06/hanselgranel.jpg')
hansel_and_granel.banner.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')

file = URI.open('https://3.bp.blogspot.com/-L8_7umb8wc0/WjulNtlLdjI/AAAAAAAAAHs/od8qpt2iFmwi8D_sHZCz2iLZ_EySex53wCLcBGAs/s1600/IMG_5618.jpg')
hansel_and_granel.photos.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')

file = URI.open('https://t1.salir.ltmcdn.com/es/places/9/6/3/img_127369_gra-de-gracia_0_600.jpg')
hansel_and_granel.photos.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')

file = URI.open('https://api.super.so/asset/pepmaps.com/3f7abe54-7042-42e1-af62-46054a21431e.jpg?w=2000')
hansel_and_granel.photos.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')


hansel_and_granel.save!

les_tres_gourmets = Place.create!(
    address: "Carrer de Casanova, 118, 08036, Barcelona",
    name: "Les Tres Gourmets",
    category: Category.find_by_name("Restaurant"),
    user: blanca,
    story: "We make delicious, home-made meals made with love, using only seasonal vegetables most of which are locally-sourced"
)
les_tres_gourmets.tag_list.add("Women owned", "Organic", "Vegetarian")

# image related
file = URI.open('https://images.squarespace-cdn.com/content/v1/5e297d214c22026b05a67e7a/1587387672989-1YBKIZRUAXKNZU8TWA2I/ke17ZwdGBToddI8pDm48kHTHJlACqy9PR67J39ATHOp7gQa3H78H3Y0txjaiv_0fDoOvxcdMmMKkDsyUqMSsMWxHk725yiiHCCLfrh8O1z5QPOohDIaIeljMHgDF5CVlOqpeNLcJ80NK65_fV7S1UfZ1qQlCBU8D8HwMSx19XWWhZWoAraqJt_ybhixA0kzVDVfRxgAIsQ7eQiOnQS3C_Q/DSC06095_websize.jpg?format=2500w')
les_tres_gourmets.banner.attach(io: file, filename: 'nes.png', content_type: 'image/png')

file = URI.open('https://images.squarespace-cdn.com/content/v1/5e297d214c22026b05a67e7a/1587390285208-PFI582POT8C0WOJG8V45/ke17ZwdGBToddI8pDm48kI03AIqr8VMSlBCjBq-1huUUqsxRUqqbr1mOJYKfIPR7LoDQ9mXPOjoJoqy81S2I8N_N4V1vUb5AoIIIbLZhVYxCRW4BPu10St3TBAUQYVKc6BtiZruVgad08XqUqInMmM0yqmF4DIviRWiX0XxMJsJgxcms5m1Pc31EKTWe8C5v/DSC06292_websize.jpg?format=2500w')
les_tres_gourmets.photos.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')

file = URI.open('https://unbuendiaenbarcelona.com/wp-content/uploads/2019/02/IMG-20181205-WA0020.jpg')
les_tres_gourmets.photos.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')

file = URI.open('https://images.unsplash.com/photo-1482049016688-2d3e1b311543?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=653&q=80')
les_tres_gourmets.photos.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')

les_tres_gourmets.save!

kaoni_wellbeing = Place.create!(
    address: "Carrer de Saragossa, 39, 08006 Barcelona",
    name: "Kaoni Wellbeing",
    category: Category.find_by_name("Beauty and Wellness"),
    user: vanessa,
    story: "A warm and peaceful space that looks after your wellbeing well being kind to our earth and it's inhabitants"
)
kaoni_wellbeing.tag_list.add("Women owned", "Organic", "Fair trade")

# image related
file = URI.open("https://www.kaoni.es/wp-content/uploads/2019/04/AGA4384-1.jpg")
kaoni_wellbeing.banner.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')

file = URI.open('https://cdn1.treatwell.net/images/view/v2.i1177347.w1280.h800.xDB1310E9/')
kaoni_wellbeing.photos.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')

file = URI.open('https://media-cdn.tripadvisor.com/media/photo-m/1280/16/e9/6a/c7/entrada-de-kaoni.jpg')
kaoni_wellbeing.photos.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')

file = URI.open('https://cdn1.treatwell.net/images/view/v2.i2668976.w1280.h800.xCD4C75BE/')
kaoni_wellbeing.photos.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')

kaoni_wellbeing.save!

woki_organic_market = Place.create!(
    address: "Carrer d'Astúries, 22, 08012 Barcelona",
    name: "Woki Organic Market",
    category: Category.find_by_name("Groceries"),
    user: marc,
    story: "Organic, guilt-free products that nourish your body and help create a better world"
)
woki_organic_market.tag_list.add("Organic", "Fair trade")

# image related
file = URI.open('https://fastly.4sqi.net/img/general/200x200/3606159_qBMVs8784rwqgltbq_mU50vTQkE_U4W8S1XYMbStMsM.jpg')
woki_organic_market.banner.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')

file = URI.open('https://lh3.googleusercontent.com/-LtypI18hcwY/TXiuiMAWH2I/AAAAAAAAeiY/wc_YZwoMxoE/s640/422156688.jpg')
woki_organic_market.photos.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')

file = URI.open('https://media-cdn.tripadvisor.com/media/photo-s/10/ef/c3/f1/o.jpg')
woki_organic_market.photos.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')

file = URI.open('https://www.creaprojects.es/sites/default/files/portfolio/image/5size4_large.jpg')
woki_organic_market.photos.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')

woki_organic_market.save!


two_thirds = Place.create!(
    address: "Carrer del Monestir, 23, 08034 Barcelona",
    name: "Two Thirds",
    category: Category.find_by_name("Clothing and Fabrics"),
    user: lutz,
    story: "Two Thirds is a Barcelona-based Bcorp brand which sells amazing, sustainable clothing for the outdoor enthusiast"
)
two_thirds.tag_list.add("Organic", "Fair trade")

# image related
file = URI.open('https://cdn.shopify.com/s/files/1/0995/5544/files/3_ebe0e568-2300-473f-af1d-d98b91d8f48a_1920x.jpg?v=1606807525')
two_thirds.banner.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')

file = URI.open('https://barcelona.lecool.com/files/2014/10/twothirds-3-e1413312802244.jpg')
two_thirds.photos.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')

file = URI.open('https://www.we-heart.com/upload-images/twothirdsbarcelona4@2x.jpg')
two_thirds.photos.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')

file = URI.open('https://kaikucaffelatte.com/blog/wp-content/uploads/2016/07/Kaiku-Caffe-Latte-Tienda-Moda-Barcelona-TwoThirds.jpg')
two_thirds.photos.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')


two_thirds.save!

sukhi_rugs = Place.create!(
    address: "Carrer del Comte Borrell, 162, 08015",
    name: "Sukhi Rugs",
    category: Category.find_by_name("Clothing and Fabrics"),
    user: nasia,
    story: "I left behind 13 years of work in a non-profit foundation to set up Rukhi a few months ago, an intimate and careful establishment that sells the best, sustainably-made rugs"
)
sukhi_rugs.tag_list.add("Women owned", "Organic", "Fair trade")

# image related
file = URI.open('https://www.sukhi.es/pub/media/catalog/product/e/n/lited-braided-felt-asian-felt-ball-rugs.jpg')
sukhi_rugs.banner.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')

file = URI.open('https://www.thedesignsheppard.com/wp-content/uploads/2016/10/Sukhi_Overdyed-Patchwork-Rug-635x508.jpg')
sukhi_rugs.photos.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')

file = URI.open('https://www.sukhirugs.com/pub/media/wysiwyg/Blog/Sukhirugs-com/four-designs-of-unique-flat-weave-hygge-sukhi-rugs-in-different-colors.jpg')
sukhi_rugs.photos.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')

file = URI.open('https://www.easyrelooking.com/wp-content/uploads/Tappeto-Beni-Ourani_3.jpg')
sukhi_rugs.photos.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')

sukhi_rugs.save!

nomad_coffee_lab = Place.create!(
    address: "Passatge Sert, 12, 08003 Barcelona",
    name: "Nomad Coffee Lab",
    category: Category.find_by_name("Cafe"),
    user: pierre,
    story: "I left behind 13 years of work in a non-profit foundation to set up Nomad a few months ago, an intimate and careful establishment that makes incredible coffee, guilt-free"
)
nomad_coffee_lab.tag_list.add("Organic", "Fair trade")

# image related
file = URI.open('https://nomadcoffee.es/wp-content/uploads/2020/03/nomad_coffee_lab_shop_barcelona.jpg')
nomad_coffee_lab.banner.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')

file = URI.open('https://happyinspain.com/assets/uploads/2015/07/coffee-nomad1.jpg')
nomad_coffee_lab.photos.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')

file = URI.open('https://barcelona.lecool.com/files/2016/06/1-IMG_1195.jpg')
nomad_coffee_lab.photos.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')

file = URI.open('https://estaticos.elperiodico.com/resources/jpg/3/4/1517323351943.jpg')
nomad_coffee_lab.photos.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')

nomad_coffee_lab.save!

restaurant_ohbo = Place.create!(
    address: "Carrer del Dr. Fleming, 15, 08017 Barcelona",
    name: "Restaurant Ohbo",
    category: Category.find_by_name("Restaurant"),
    user: manu,
    story: "I left behind 13 years of work in a non-profit foundation to set up Ohbo a few months ago, an intimate and careful establishment that makes delicious organic food"
)
restaurant_ohbo.tag_list.add("Organic")

# image related
file = URI.open('https://media-cdn.tripadvisor.com/media/photo-s/06/f6/3b/92/ohbo-organic-cafe.jpg')
restaurant_ohbo.banner.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')

file = URI.open('https://images.squarespace-cdn.com/content/v1/5ced0ce9c048c8000122a08b/1559659764694-GBYU4HW2Q1P0D9B0LFG3/ke17ZwdGBToddI8pDm48kN18azOU2uim5hsRbz6movgUqsxRUqqbr1mOJYKfIPR7LoDQ9mXPOjoJoqy81S2I8N_N4V1vUb5AoIIIbLZhVYy7Mythp_T-mtop-vrsUOmeInPi9iDjx9w8K4ZfjXt2dtwYOJx-CYfqj9t40gyLNneEWcg90QZCueVFWrisuJvSW07ycm2Trb21kYhaLJjddA/separata-01.jpg?format=2500w')
restaurant_ohbo.photos.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')

file = URI.open('https://www.mundodeportivo.com/r/GODO/MD/p6/Ocio/Imagenes/2019/06/07/Recortada/img_emuntanola_20190607-095120_imagenes_md_otras_fuentes_4-calabacin_relleno_de_verduras_asadas_del_huerto-kdJH-U46272018777221G-572x381@MundoDeportivo-Web.jpg')
restaurant_ohbo.photos.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')

file = URI.open('https://www.bcnrestaurantes.com/img-trans/productos/22340/fotos/600-5d72263ad2d33-ohbo-organic-cafe.png')
restaurant_ohbo.photos.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')

restaurant_ohbo.save!

the_magnificent = Place.create!(
    address: "Carrer de l'Argenteria, 64, 08003 Barcelona",
    name: "The Magnificent",
    category: Category.find_by_name("Cafe"),
    user: lisa,
    story: "I left behind 13 years of work in a non-profit foundation to set up The Magnificent a few months ago, an intimate and careful establishment that makes lovely coffee"
)
the_magnificent.tag_list.add("Women owned","Fair trade")

# image related
file = URI.open('https://cafeselmagnifico.com/wp-content/uploads/2020/09/el-magnifico-119-1280x1600.jpg')
the_magnificent.banner.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')

file = URI.open('https://331mrnu3ylm2k3db3s1xd1hg-wpengine.netdna-ssl.com/wp-content/uploads/2016/12/Sprudge-Barcelona_Coffee_Guide_SatansInside_Sara_Mason_17-740x494.jpg')
the_magnificent.photos.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')

file = URI.open('https://331mrnu3ylm2k3db3s1xd1hg-wpengine.netdna-ssl.com/wp-content/uploads/2016/12/Sprudge-Barcelona_Coffee_Guide_BlackRemedyInside02_Sara_Mason_05-740x494.jpg')
the_magnificent.photos.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')

file = URI.open('https://media.timeout.com/images/103897299/630/472/image.jpg')
the_magnificent.photos.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')

the_magnificent.save!


conscious_couscous = Place.create!(
    address: "Carrer Nou de la Rambla 22, 08001 Barcelona",
    name: "Conscious Couscous",
    category: Category.find_by_name("Restaurant"),
    user: malik,
    story: "My love for cous cous was born in my childhood. Now that I live in Barcelona, I want to bring this love to the catalan people in a way they've never tasted before!"
)
conscious_couscous.tag_list.add("Locally sourced", "Vegetarian")

# image related
file = URI.open('https://foodyt.com/media/uploads/ensalada_cuscus1.jpg')
conscious_couscous.banner.attach(io: file, filename: 'nes.png', content_type: 'image/png')

file = URI.open('https://images.unsplash.com/photo-1585238342070-61e1e768b1ff?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=80')
conscious_couscous.photos.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')

file = URI.open('https://www.thegourmetjournal.com/wp-content/uploads/2018/04/Los-100-mejores-restaurantes-Gourmet-Casual-de-Europa-2018.jpg')
conscious_couscous.photos.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')

file = URI.open('https://www.simplyscratch.com/wp-content/uploads/2014/01/Roasted-Vegetable-Couscous-www.SimplyScratch.com-tossy-toss.jpg')
conscious_couscous.photos.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')

conscious_couscous.save!

