require "open-uri"

puts "Cleaning up database..."

Message.destroy_all
Chatroom.destroy_all
Match.destroy_all
Gallerist.destroy_all
Artwork.destroy_all
Artist.destroy_all
User.destroy_all
puts "Database cleaned"

puts "Creating Users..."
charlotte = User.create(email: "charlotte@gmail.com", password: "123456")
mohammad = User.create(email: "mohammad@gmail.com", password: "123456")
clement = User.create(email: "clement@gmail.com", password: "123456")
puts 'Done!'

puts "Creating Artists..."
artist1 = Artist.new(first_name: "Martin", last_name: "Leroux", artist_name: "LRX", address: "London", description: "English painter from Les beaux Arts de Paris. Travelling a lot. I mostly do paintings on oil.")
file = URI.open('https://res.cloudinary.com/clemi04/image/upload/v1638478455/production/avatar_xtvoar.jpg')
artist1.photos.attach(io: file, filename: 'martindepalle.png', content_type: 'img/png')
artist1.user = charlotte
artist1.save!

artist2 = Artist.new(first_name: "Mitch", last_name: "Kruger", artist_name: "itsallinsideus", address: "Amsterdam", description: "If you are looking for creative arts, you have come to the right place. I do painting, graphic design, sklupturing... and many other arts!")
file = URI.open('https://res.cloudinary.com/clemi04/image/upload/v1638478455/production/avatar_xtvoar.jpg')
artist2.photos.attach(io: file, filename: 'itsallinsideus.png', content_type: 'img/png')
artist2.user = mohammad
artist2.save!

artist3 = Artist.new(first_name: "Cole", last_name: "Newman", artist_name: "Cole's Color", address: "London", description: "My process is an exploration into the utilization of gravity within art, the laws of physics translated to a canvas.")
file = URI.open('https://res.cloudinary.com/clemi04/image/upload/v1638478455/production/avatar_xtvoar.jpg')
artist3.photos.attach(io: file, filename: 'colescolor.png', content_type: 'img/png')
artist3.user = charlotte
artist3.save!

artist4 = Artist.new(first_name: "Paul", last_name: "Vignal", artist_name: "Quasar", address: "Angers", description: "French artist from Angers, resin sculptor and pop art style inclusion.")
file = URI.open('https://res.cloudinary.com/clemi04/image/upload/v1638478455/production/avatar_xtvoar.jpg')
artist4.photos.attach(io: file, filename: 'quasar.png', content_type: 'img/png')
artist4.user = mohammad
artist4.save!

artist5 = Artist.new(first_name: "Valentin", last_name: "Pavageau", artist_name: "Paval", address: "Bruxelles", description: "Belgian artist living in Liège. I do digital painting.")
file = URI.open('https://res.cloudinary.com/clemi04/image/upload/v1638478455/production/avatar_xtvoar.jpg')
artist5.photos.attach(io: file, filename: 'paval.png', content_type: 'img/png')
artist5.user = charlotte
artist5.save!

artist6 = Artist.new(first_name: "Victor", last_name: "Zarama", artist_name: "Vivizama", address: "Marseille", description: "French Manga & Anime Artist. I love drawing my favorite manga & anime!")
file = URI.open('https://res.cloudinary.com/clemi04/image/upload/v1638478455/production/avatar_xtvoar.jpg')
artist6.photos.attach(io: file, filename: 'vivizama.png', content_type: 'img/png')
artist6.user = mohammad
artist6.save!

artist7 = Artist.new(first_name: "Cyprien", last_name: "Dupont", artist_name: "Hibouch", address: "Paris", description: "Drawer, architect, musician. Tolerates dogs.")
file = URI.open('https://res.cloudinary.com/clemi04/image/upload/v1638478455/production/avatar_xtvoar.jpg')
artist7.photos.attach(io: file, filename: 'hibouch.png', content_type: 'img/png')
artist7.user = charlotte
artist7.save!

artist8 = Artist.new(first_name: "Yemenja", last_name: "Miller", artist_name: "Cookie-illustration", address: "Paris", description: "Self taught illustrator and designer, currently living in Paris.")
file = URI.open('https://res.cloudinary.com/clemi04/image/upload/v1638478455/production/avatar_xtvoar.jpg')
artist8.photos.attach(io: file, filename: 'cookie.png', content_type: 'img/png')
artist8.user = mohammad
artist8.save!

artist9 = Artist.new(first_name: "Antoine", last_name: "Cabrol", artist_name: "weirdsetups", address: "Lyon", description: "French photograph from Lyon, France. I love taking weird setups in daily life.")
file = URI.open('https://res.cloudinary.com/clemi04/image/upload/v1638478455/production/avatar_xtvoar.jpg')
artist9.photos.attach(io: file, filename: 'cookie.png', content_type: 'img/png')
artist9.user = charlotte
artist9.save!

artist10 = Artist.new(first_name: "Timothée", last_name: "Depalle", artist_name: "Mr.Ghostbelette", address: "Paris", description: "French artist living in Paris. I love ghosts, painting and drawing ghosts. Skateboard lover.")
file = URI.open('https://res.cloudinary.com/clemi04/image/upload/v1638481163/production/mr-ghostbelette_profile-picture_fycjn0.jpg')
artist10.photos.attach(io: file, filename: 'mrghostbelette.png', content_type: 'img/png')
artist10.user = mohammad
artist10.save!

puts "Artists created!"

puts "Creating Gallerist... "
gallerist1 = Gallerist.new(first_name: "Clement", last_name: "Azalbert", name: "Art For All", address: "16 Villa Gaudelet, 75011 Paris", description: "Founded in September 2021, we are a young gallery based in Paris, with the will to give visibility to new talents. We are open to every kind of arts!", rating: "4.5")
file1 = URI.open('https://res.cloudinary.com/clemi04/image/upload/v1638460832/production/gallerist-logo_wvkqqa.png')
gallerist1.photos.attach(io: file1, filename: 'gallerist-logo.png', content_type: 'img/png')
file2 = URI.open('https://res.cloudinary.com/clemi04/image/upload/v1638461037/production/gallerist-1_fvcmzb.png')
gallerist1.photos.attach(io: file2, filename: 'gallerist-1.png', content_type: 'img/png')
file3 = URI.open('https://res.cloudinary.com/clemi04/image/upload/v1638461037/production/gallerist-2_uit4pv.png')
gallerist1.photos.attach(io: file3, filename: 'gallerist-2.png', content_type: 'img/png')
file4 = URI.open('https://res.cloudinary.com/clemi04/image/upload/v1638461037/production/gallerist-3_sdi1fh.png')
gallerist1.photos.attach(io: file4, filename: 'gallerist-3.png', content_type: 'img/png')
file5 = URI.open('https://res.cloudinary.com/clemi04/image/upload/v1638461037/production/gallerist-4_ukdmxj.png')
gallerist1.photos.attach(io: file5, filename: 'gallerist-4.png', content_type: 'img/png')
file6 = URI.open('https://res.cloudinary.com/clemi04/image/upload/v1638461037/production/gallerist-5_wmsxos.png')
gallerist1.photos.attach(io: file6, filename: 'gallerist-5.png', content_type: 'img/png')
gallerist1.user = clement
gallerist1.save!
gallerist1.liked_by artist10

puts "Gallerists created!"

puts "Creating Artwork..."

# artist1 = LRX
artwork1 = Artwork.new(title: "Life is a dog", style: "Painting")
file = URI.open('https://res.cloudinary.com/clemi04/image/upload/v1638481643/production/artmeets-painting-martindepale_c7hzil.jpg')
artwork1.photo.attach(io: file, filename: 'artwork-lrx.png', content_type: 'img/png')
artwork1.artist = artist1
artwork1.save!

# artist 7 = Hibouch
artwork8 = Artwork.new(title: "Surfing", style: "Drawing")
file = URI.open('https://res.cloudinary.com/clemi04/image/upload/v1638481643/production/artmeets-drawing_hibouch_jdktgp.jpg')
artwork8.photo.attach(io: file, filename: 'artwork-hibouch.png', content_type: 'img/png')
artwork8.artist = artist7
artwork8.save!

# artist2 = itsallinsideus
artwork2 = Artwork.new(title: "copie", style: "Painting")
file = URI.open('https://res.cloudinary.com/clemi04/image/upload/v1638481643/production/artmeets-painting-itsallinsideus_zjxb7x.jpg')
artwork2.photo.attach(io: file, filename: 'artwork-itsallinsideus.png', content_type: 'img/png')
artwork2.artist = artist2
artwork2.save!

# artist 4 = Quasar
artwork3 = Artwork.new(title: "Super Mario with hearts", style: "Sculpture")
file = URI.open('https://res.cloudinary.com/clemi04/image/upload/v1638481643/production/artmeets-scupture_quasarcreations_icxjmv.jpg')
artwork3.photo.attach(io: file, filename: 'artwork-quasar.png', content_type: 'img/png')
artwork3.artist = artist4
artwork3.save!

# artist 3 = Cole's Color
artwork5 = Artwork.new(title: "Geometry", style: "Painting")
file = URI.open('https://res.cloudinary.com/clemi04/image/upload/v1638481643/production/artmeets-painting_colescolor_fsxlls.jpg')
artwork5.photo.attach(io: file, filename: 'artwork-colescolor.png', content_type: 'img/png')
artwork5.artist = artist3
artwork5.save!

# artist 5 = Paval
artwork6 = Artwork.new(title: "Exhibition", style: "Graphic Design")
file = URI.open('https://res.cloudinary.com/clemi04/image/upload/v1638481643/production/artmeets-digital-art_valentinpavageau_irz1fc.jpg')
artwork6.photo.attach(io: file, filename: 'artwork-paval.png', content_type: 'img/png')
artwork6.artist = artist5
artwork6.save!

# artist 6 = Vivizama
# artwork7 = Artwork.new(title: "Demon Slayer, Infinity Train Fanar", style: "Drawing")
# file = URI.open('https://res.cloudinary.com/clemi04/image/upload/v1638481642/production/artmeets-drawing_vivizama-2_dnmtkr.jpg')
# artwork7.photo.attach(io: file, filename: 'artwork-vivizama.png', content_type: 'img/png')
# artwork7.artist = artist6
# artwork7.save!

# artist 9 = weirdsetups
artwork9 = Artwork.new(title: "Morning Coffee", style: "Photography")
file = URI.open('https://res.cloudinary.com/clemi04/image/upload/v1638481643/production/artmeets-photography_weirdsetups_bhl3cp.jpg')
artwork9.photo.attach(io: file, filename: 'artwork-weirdsetups.png', content_type: 'img/png')
artwork9.artist = artist9
artwork9.save!

# artist 10 = Mr.Ghostbelette
artwork10 = Artwork.new(title: "Sorry no Ghost", style: "Graphic Design")
file = URI.open('https://res.cloudinary.com/clemi04/image/upload/v1638481644/production/artmeets_digital-arts-2_tpz8lx.jpg')
artwork10.photo.attach(io: file, filename: 'artwork1-mrghosbelette.png', content_type: 'img/png')
artwork10.artist = artist10
artwork10.save!

# artist 8 = Cookie-illustration
artwork4 = Artwork.new(title: "Bodypositive", style: "Graphic Design")
file = URI.open('https://res.cloudinary.com/clemi04/image/upload/v1638481643/production/artmeets_cookie-illustrations-digital-arts-1_mtcxqg.jpg')
artwork4.photo.attach(io: file, filename: 'artwork-cookie-illustrations.png', content_type: 'img/png')
artwork4.artist = artist8
artwork4.save!

# artist 10 = Mr.Ghostbelette
artwork13 = Artwork.new(title: "Ghost player", style: "Graphic Design")
file = URI.open('https://res.cloudinary.com/clemi04/image/upload/v1638481644/production/artmeets_digital-arts-3_dx6fy0.jpg')
artwork13.photo.attach(io: file, filename: 'artwork4-mrghostbelette.png', content_type: 'img/png')
artwork13.artist = artist10
artwork13.save!

# artist 10 = Mr.Ghostbelette
artwork11 = Artwork.new(title: "Ghost Note", style: "Painting")
file = URI.open('https://res.cloudinary.com/clemi04/image/upload/v1638481644/production/artmeets_painting-mrghostbellete-2_zueget.jpg')
artwork11.photo.attach(io: file, filename: 'artwork2-mrghosbelette.png', content_type: 'img/png')
artwork11.artist = artist10
artwork11.save!

# artist 10 = Mr.Ghostbelette
artwork14 = Artwork.new(title: "Ghost car", style: "Painting")
file = URI.open('https://res.cloudinary.com/clemi04/image/upload/v1638481642/production/artmeets-painting-mrghostbellette_wvwzbp.jpg')
artwork14.photo.attach(io: file, filename: 'artwork5-mrghostbelette.png', content_type: 'img/png')
artwork14.artist = artist10
artwork14.save!

# artist 10 = Mr.Ghostbelette
artwork12 = Artwork.new(title: "It's skateday", style: "Photography")
file = URI.open('https://res.cloudinary.com/clemi04/image/upload/v1638481642/production/artmeets-photo-mrghostbellette_iwntid.jpg')
artwork12.photo.attach(io: file, filename: 'artwork3-mrghostbelette.png', content_type: 'img/png')
artwork12.artist = artist10
artwork12.save!

# artist 10 = Mr.Ghostbelette
# artwork15 = Artwork.new(title: "Ghost Madzine", style: "Drawing")
# file = URI.open('https://res.cloudinary.com/clemi04/image/upload/v1638481642/production/artmeets-drawing-mrghostbellette_pkj6l1.jpg')
# artwork15.photo.attach(io: file, filename: 'artwork6-mrghostbelette.png', content_type: 'img/png')
# artwork15.artist = artist10
# artwork15.save!
puts "Artworks Created!"
