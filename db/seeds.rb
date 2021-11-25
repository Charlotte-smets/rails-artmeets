# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require "open-uri"

#file = URI.open('https://upload.wikimedia.org/wikipedia/commons/thumb/8/82/NES-Console-Set.jpg/1200px-NES-Console-Set.jpg')
#article = Artist.new(title: 'NES', body: "A great console")
#article.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')

puts "Cleaning up database..."
Gallerist.destroy_all
Artist.destroy_all
Artwork.destroy_all
User.destroy_all
puts "Database cleaned"

puts "Creating Users..."
charlotte = User.create(email: "charlotte@gmail.com", password: "123456")
mohammad = User.create(email: "mohammad@gmail.com", password: "123456")
clement = User.create(email: "clement@gmail.com", password: "123456")
puts 'Done!'

puts "Creating Artists..."
artist1 = Artist.new(first_name: "Leonardo", last_name: "da Vinci", artist_name: "da Vinci", address: "Italy", description: "The original Renaissance Man")
file = URI.open('https://res.cloudinary.com/charlotte-smets/image/upload/v1637060480/jacqueline_hfxdpw.jpg')
artist1.photos.attach(io: file, filename: 'artist1.png', content_type:'img/png')
artist1.user = mohammad
artist1.save!

artist2 = Artist.new(first_name: "Darryl", last_name: "McCray", artist_name: "Cornbread", address: "New York", description: "modern graffiti artist.")
file = URI.open('https://res.cloudinary.com/charlotte-smets/image/upload/v1637060480/jacqueline_hfxdpw.jpg')
artist2.photos.attach(io: file, filename: 'artist2.png', content_type:'img/png')
artist2.user = charlotte
artist2.save!

artist3 = Artist.new(first_name: "Jean-luc", last_name: "Lacroix", artist_name: "Lacroix", address: "Paris", description: "keen sense for abstraction")
file = URI.open('https://res.cloudinary.com/charlotte-smets/image/upload/v1637060480/jacqueline_hfxdpw.jpg')
artist3.photos.attach(io: file, filename: 'artist3.png', content_type:'img/png')
artist3.user = clement
artist3.save!

artist4 = Artist.new(first_name: "Pierre", last_name: "Dubreuil ", artist_name: "Dubreuil ", address: "Paris", description: "photographer")
file = URI.open('https://res.cloudinary.com/charlotte-smets/image/upload/v1637060480/jacqueline_hfxdpw.jpg')
artist4.photos.attach(io: file, filename: 'artist4.png', content_type:'img/png')
artist4.user = mohammad
artist4.save!

artist5 = Artist.new(first_name: "John", last_name: "Hamon", artist_name: "Hamon", address: "Paris", description: "photographer")
file = URI.open('https://res.cloudinary.com/charlotte-smets/image/upload/v1637060480/jacqueline_hfxdpw.jpg')
artist5.photos.attach(io: file, filename: 'artist5.png', content_type:'img/png')
artist5.user = charlotte
artist5.save!
puts "Artists created!"

puts "Creating Gallerist... "
gallerist1 = Gallerist.new(first_name: "Emmanuel", last_name: "Perrotin", name: "Galerie Emmanuel Perrotin", address: "Paris", description: "The Parisian establishment is now installed in an elegant hôtel particulier in the Marais", rating: "4.5")
file = URI.open('https://res.cloudinary.com/charlotte-smets/image/upload/v1637060480/jacqueline_hfxdpw.jpg')
gallerist1.photos.attach(io: file, filename: 'gallerist1.png', content_type:'img/png')
gallerist1.user = charlotte
gallerist1.save!

gallerist2 = Gallerist.new(first_name: "David", last_name: "Zwirner", name: "David Zwirner", address: "Paris", description: "Galerie David Zwirner, voted most powerful figure of the art world by Artreview in 2018, opened a new space in Paris on October 16, 2019.", rating: "4.7")
file = URI.open('https://res.cloudinary.com/charlotte-smets/image/upload/v1637060480/jacqueline_hfxdpw.jpg')
gallerist2.photos.attach(io: file, filename: 'gallerist2.png', content_type:'img/png')
gallerist2.user = clement
gallerist2.save!

gallerist3 = Gallerist.new(first_name: "Daniel", last_name: "Templon", name: "Galerie Daniel Templon", address: "Paris", description: "Daniel Templon is the patriarch of the Parisian gallerists!", rating: "4.4")
file = URI.open('https://res.cloudinary.com/charlotte-smets/image/upload/v1637060480/jacqueline_hfxdpw.jpg')
gallerist3.photos.attach(io: file, filename: 'gallerist3.png', content_type:'img/png')
gallerist3.user = mohammad
gallerist3.save!

gallerist4 = Gallerist.new(first_name: "Thaddaeus", last_name: "Ropac", name: "Galerie Thaddaeus Ropac", address: "Paris", description: "Ropac now has galleries in London, Paris, and Salzburg, representing the estates of legendary artists.", rating: "4.6")
file = URI.open('https://res.cloudinary.com/charlotte-smets/image/upload/v1637060480/jacqueline_hfxdpw.jpg')
gallerist4.photos.attach(io: file, filename: 'gallerist4.png', content_type:'img/png')
gallerist4.user = charlotte
gallerist4.save!

gallerist5 = Gallerist.new(first_name: "Marian", last_name: "Goodman", name: "Marian Goodman Gallery", address: "Paris", description: "One of the rare women leading an international gallery, Marian Goodman is a grande dame of American Art.", rating: "4.8")
file = URI.open('https://res.cloudinary.com/charlotte-smets/image/upload/v1637060480/jacqueline_hfxdpw.jpg')
gallerist5.photos.attach(io: file, filename: 'gallerist5.png', content_type:'img/png')
gallerist5.user = clement
gallerist5.save!
puts "Gallerists created!"




# puts "Creating Artwork..."
# artwork1 = Artwork.new(title: "artwork1", style: "artwork1")
# file = URI.open('https://res.cloudinary.com/charlotte-smets/image/upload/v1637060480/jacqueline_hfxdpw.jpg')
# artwork1.photos.attach(io: file, filename: 'artwork1.png', content_type:'img/png')
# artwork1.artist = artist1
# artwork1.save!

# artwork2 = Artwork.new(title: "artwork2", style: "artwork2")
# file = URI.open('https://res.cloudinary.com/charlotte-smets/image/upload/v1637060480/jacqueline_hfxdpw.jpg')
# artwork2.photos.attach(io: file, filename: 'artwork2.png', content_type:'img/png')
# artwork2.artist = artist2
# artwork2.save!

# artwork3 = Artwork.new(title: "artwork3", style: "artwork3")
# file = URI.open('https://res.cloudinary.com/charlotte-smets/image/upload/v1637060480/jacqueline_hfxdpw.jpg')
# artwork3.photos.attach(io: file, filename: 'artwork3.png', content_type:'img/png')
# artwork3.artist = artist3
# artwork3.save!

# artwork4 = Artwork.new(title: "artwork4", style: "artwork4")
# file = URI.open('https://res.cloudinary.com/charlotte-smets/image/upload/v1637060480/jacqueline_hfxdpw.jpg')
# artwork4.photos.attach(io: file, filename: 'artwork4.png', content_type:'img/png')
# artwork4.artist = artist4
# artwork4.save!

# artwork5 = Artwork.new(title: "artwork5", style: "artwork5")
# file = URI.open('https://res.cloudinary.com/charlotte-smets/image/upload/v1637060480/jacqueline_hfxdpw.jpg')
# artwork5.photos.attach(io: file, filename: 'artwork5.png', content_type:'img/png')
# artwork5.artist = artist5
# artwork5.save!
# puts "ArtworkCreated!"
