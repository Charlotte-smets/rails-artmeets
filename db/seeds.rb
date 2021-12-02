require "open-uri"

#file = URI.open('https://upload.wikimedia.org/wikipedia/commons/thumb/8/82/NES-Console-Set.jpg/1200px-NES-Console-Set.jpg')
#article = Artist.new(title: 'NES', body: "A great console")
#article.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')

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
# artist1 = Artist.new(first_name: "Leonardo", last_name: "da Vinci", artist_name: "da Vinci", address: "Italy", description: "The original Renaissance Man")
# file = URI.open('https://res.cloudinary.com/charlotte-smets/image/upload/v1638437343/ARTIST3_qvhign.jpg')
artist1 = Artist.new(first_name: "Christopher", last_name: "Wool", artist_name: "Christopher Wool", address: "New York", description: "Post-conceptual.")
file = URI.open('https://res.cloudinary.com/ddnbumqwk/image/upload/v1637927820/m6mhhrtyyip6s2fddcyx.jpg')
artist1.photos.attach(io: file, filename: 'artist1.png', content_type: 'img/png')
artist1.user = charlotte
artist1.save!

# artist2 = Artist.new(first_name: "Darryl", last_name: "McCray", artist_name: "Cornbread", address: "New York", description: "modern graffiti artist.")
# file = URI.open('https://res.cloudinary.com/charlotte-smets/image/upload/v1638437343/ARTIST4_x7fuc7.jpg')
artist2 = Artist.new(first_name: "Barbara", last_name: "Kruger", artist_name: "Barbara Kruger", address: "Paris", description: "Art conceptuel, Art contemporain, Postmodern art")
file = URI.open('https://res.cloudinary.com/ddnbumqwk/image/upload/v1637928465/cxpwkcifwx19m9jhnhpt.jpg')
artist2.photos.attach(io: file, filename: 'artist2.png', content_type: 'img/png')
artist2.user = clement
artist2.save!

# artist3 = Artist.new(first_name: "Jean-luc", last_name: "Lacroix", artist_name: "Lacroix", address: "Paris", description: "keen sense for abstraction")
# file = URI.open('https://res.cloudinary.com/charlotte-smets/image/upload/v1638437343/ARTIST_tmrfof.jpg')
artist3 = Artist.new(first_name: "Takashi", last_name: "Murakami", artist_name: "Takashi Murakami", address: "Tokyo", description: "Superflat, Art contemporain, Pop art")
file = URI.open('https://res.cloudinary.com/ddnbumqwk/image/upload/v1637929226/usttwrdrloau1tp60hox.jpg')
artist3.photos.attach(io: file, filename: 'artist3.png', content_type: 'img/png')
artist3.user = mohammad
artist3.save!

# artist4 = Artist.new(first_name: "Pierre", last_name: "Dubreuil ", artist_name: "Dubreuil ", address: "Paris", description: "photographer")
# file = URI.open('https://res.cloudinary.com/charlotte-smets/image/upload/v1638437343/ARTIST2_iwqmzg.jpg')
artist4 = Artist.new(first_name: "Peter", last_name: "Halley", artist_name: "Peter Halley", address: "New York", description: "Hard Edge Painting, Neo-conceptual art, Minimalisme.")
file = URI.open('https://res.cloudinary.com/ddnbumqwk/image/upload/v1637925161/chu274sa816fdwjvtdxt.jpg')
artist4.photos.attach(io: file, filename: 'artist4.png', content_type: 'img/png')
artist4.user = charlotte
artist4.save!

# artist5 = Artist.new(first_name: "John", last_name: "Hamon", artist_name: "Hamon", address: "Paris", description: "photographer")
# file = URI.open('https://res.cloudinary.com/charlotte-smets/image/upload/v1638437343/ARTIST1_c8atmq.jpg')
artist5 = Artist.new(first_name: "Brian", last_name: "Donnelly", artist_name: "Kaws", address: "New York", description: "Sculptor, Painter, Designer")
file = URI.open('https://res.cloudinary.com/ddnbumqwk/image/upload/v1637929696/c5rryhkdzqsunv8ovwjh.jpg')
artist5.photos.attach(io: file, filename: 'artist5.png', content_type: 'img/png')
artist5.user = charlotte
artist5.save!
puts "Artists created!"

puts "Creating Gallerist... "
gallerist1 = Gallerist.new(first_name: "Clement", last_name: "Azalbert", name: "Art For All", address: "Paris", description: "Founded in September 2021, we are a young gallery with the will to give visibility to new talents. We are open to every kind of arts!", rating: "4.5")
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
gallerist1.liked_by artist4

#gallerist2 = Gallerist.new(first_name: "David", last_name: "Zwirner", name: "David Zwirner", address: "Paris", description: "Galerie David Zwirner, voted most powerful figure of the art world by Artreview in 2018, opened a new space in Paris on October 16, 2019.", rating: "4.7")
#file = URI.open('https://res.cloudinary.com/charlotte-smets/image/upload/v1637060480/jacqueline_hfxdpw.jpg')
#gallerist2.photos.attach(io: file, filename: 'gallerist2.png', content_type:'img/png')
#gallerist2.user = clement
#gallerist2.save!

#gallerist3 = Gallerist.new(first_name: "Daniel", last_name: "Templon", name: "Galerie Daniel Templon", address: "Paris", description: "Daniel Templon is the patriarch of the Parisian gallerists!", rating: "4.4")
#file = URI.open('https://res.cloudinary.com/charlotte-smets/image/upload/v1637060480/jacqueline_hfxdpw.jpg')
#gallerist3.photos.attach(io: file, filename: 'gallerist3.png', content_type:'img/png')
#gallerist3.user = mohammad
#gallerist3.save!

#gallerist4 = Gallerist.new(first_name: "Thaddaeus", last_name: "Ropac", name: "Galerie Thaddaeus Ropac", address: "Paris", description: "Ropac now has galleries in London, Paris, and Salzburg, representing the estates of legendary artists.", rating: "4.6")
#file = URI.open('https://res.cloudinary.com/charlotte-smets/image/upload/v1637060480/jacqueline_hfxdpw.jpg')
#gallerist4.photos.attach(io: file, filename: 'gallerist4.png', content_type:'img/png')
#gallerist4.user = charlotte
#gallerist4.save!

#gallerist5 = Gallerist.new(first_name: "Marian", last_name: "Goodman", name: "Marian Goodman Gallery", address: "Paris", description: "One of the rare women leading an international gallery, Marian Goodman is a grande dame of American Art.", rating: "4.8")
#file = URI.open('https://res.cloudinary.com/charlotte-smets/image/upload/v1637060480/jacqueline_hfxdpw.jpg')
#gallerist5.photos.attach(io: file, filename: 'gallerist5.png', content_type: 'img/png')
#gallerist5.user = clement
#gallerist5.save!
puts "Gallerists created!"

puts "Creating Artwork..."

artwork1 = Artwork.new(title: "New Era ", style: "Dark Painting")
file = URI.open('https://res.cloudinary.com/ddnbumqwk/image/upload/v1637928009/vlbqetpyb8tn5zewqjgv.jpg')
artwork1.photo.attach(io: file, filename: 'artwork1.png', content_type: 'img/png')
artwork1.artist = artist1
artwork1.save!

artwork2 = Artwork.new(title: "Your body is a battleground", style: "Silkscreen on vinyl")
file = URI.open('https://res.cloudinary.com/ddnbumqwk/image/upload/v1637928645/mtpyv0kyrtxc1qw7cmzs.jpg')
artwork2.photo.attach(io: file, filename: 'artwork2.png', content_type: 'img/png')
artwork2.artist = artist2
artwork2.save!

artwork3 = Artwork.new(title: "vibranting colors", style: "Hard Edge Painting")
file = URI.open('https://res.cloudinary.com/ddnbumqwk/image/upload/v1637923137/lfdky2tj4zjjcrncexmi.jpg')
artwork3.photo.attach(io: file, filename: 'artwork3.png', content_type: 'img/png')
artwork3.artist = artist4
artwork3.save!

artwork4 = Artwork.new(title: "The Peter Halley Dialogues", style: "Digital Dialogues")
file = URI.open('https://res.cloudinary.com/ddnbumqwk/image/upload/v1637926256/nxtutsolqv7ze2gxlhtk.jpg')
artwork4.photo.attach(io: file, filename: 'artwork4.png', content_type: 'img/png')
artwork4.artist = artist4
artwork4.save!

artwork5 = Artwork.new(title: "The Geometry Crisis", style: "Hard Edge Painting")
file = URI.open('https://res.cloudinary.com/ddnbumqwk/image/upload/v1637926549/po1yg3azgsh49ulut9tm.jpg')
artwork5.photo.attach(io: file, filename: 'artwork5.png', content_type: 'img/png')
artwork5.artist = artist4
artwork5.save!

artwork6 = Artwork.new(title: "Au-Dessous / Au-Dessus", style: "Sketch")
file = URI.open('https://res.cloudinary.com/ddnbumqwk/image/upload/v1637926950/wfugaklyv1zcim1jclov.jpg')
artwork6.photo.attach(io: file, filename: 'artwork6.png', content_type: 'img/png')
artwork6.artist = artist4
artwork6.save!

artwork7 = Artwork.new(title: "Pardes", style: "Screen Print on Paper")
file = URI.open('https://res.cloudinary.com/ddnbumqwk/image/upload/v1637927108/cfkcisqlsziy8wi57kwk.jpg')
artwork7.photo.attach(io: file, filename: 'artwork7.png', content_type: 'img/png')
artwork7.artist = artist4
artwork7.save!

artwork8 = Artwork.new(title: "Stop Word", style: "Lithographs and Silkscreen")
file = URI.open('https://res.cloudinary.com/ddnbumqwk/image/upload/v1637927306/cldhux3xeariz8s2fogp.jpg')
artwork8.photo.attach(io: file, filename: 'artwork8.png', content_type: 'img/png')
artwork8.artist = artist4
artwork8.save!

artwork9 = Artwork.new(title: "Tan Tan Bo", style: "Pop art")
file = URI.open('https://res.cloudinary.com/ddnbumqwk/image/upload/v1637929345/ff1zb026lp4aj9afvc0i.jpg')
artwork9.photo.attach(io: file, filename: 'artwork9.png', content_type: 'img/png')
artwork9.artist = artist3
artwork9.save!

artwork10 = Artwork.new(title: "Vinyl Figure", style: "Sculptor")
file = URI.open('https://res.cloudinary.com/ddnbumqwk/image/upload/v1637929818/p95wkonjdp1jtvwzkp7n.jpg')
artwork10.photo.attach(io: file, filename: 'artwork10.png', content_type: 'img/png')
artwork10.artist = artist5
artwork10.save!
puts "Artworks Created!"
