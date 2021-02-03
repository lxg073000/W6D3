# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Artwork.destroy_all
ArtworkShare.destroy_all

ApplicationRecord.connection.reset_pk_sequence!('users')
ApplicationRecord.connection.reset_pk_sequence!('artworks')
ApplicationRecord.connection.reset_pk_sequence!('artwork_shares')

u1 = User.create({username:'Parth'})
u2 = User.create({username:'Lernard'})
u3 = User.create({username:'Thurdguy'})

a1 = Artwork.create({title:'Hello World', image_url:'google.com/hello_world', artist_id:2})
a2 = Artwork.create({title:'Telescope', image_url:'google.com/telescope', artist_id:1})
a3 = Artwork.create({title:'Weekend', image_url:'google.com/thursday_sunday', artist_id:3})

as1 = ArtworkShare.create({artwork_id:2, viewer_id:2})
as1 = ArtworkShare.create({artwork_id:1, viewer_id:1})
