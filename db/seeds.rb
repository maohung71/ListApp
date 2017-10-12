# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# # Category table
 Antiques= Category.create!(subject: 'antiques')
 Art= Category.create!(subject: 'arts')
 Books= Category.create!(subject: 'books')
 Clothing= Category.create!(subject: 'clothings')
 Film= Category.create!(subject: 'film')
 Memorabilia= Category.create!(subject: 'Memorabilia')
 Music= Category.create!(subject: 'music')
 Nature= Category.create!(subject: 'nature')
 Sports= Category.create!(subject: 'sports')
 Technology= Category.create!(subject: 'technology')
 Historical= Category.create!(subject: 'historical')
 Travel= Category.create!(subject: 'travel')
 Toys= Category.create!(subject: 'toys')

 puts "#{Category.count} Category created!"

# # Item table
 Item.create!(name: 'City Of Lost Children', description: 'Jean-Pierrre Jeunet Film', photo: 'http://res.cloudinary.com/ga-mao/image/upload/v1507649145/project4/lost_children_veanoq.jpg')
 Item.create!(name: 'Akira', description: 'Classic Animation', photo: 'http://res.cloudinary.com/ga-mao/image/upload/v1507649144/project4/akira_aargpe.jpg')
 Item.create!(name: 'Chunking Express', description: '2nd Favorite Wong KAr Wai Film', photo: 'http://res.cloudinary.com/ga-mao/image/upload/v1507649144/project4/chungking_prquu3.jpg')
 Item.create!(name: 'In The Mood For Love', description: 'Favorite Wong KAr Wai Film', photo: 'http://res.cloudinary.com/ga-mao/image/upload/v1507649145/project4/mood_for_love_a5mg6q.jpg')
 Item.create!(name: 'Nike LDV', description: 'size 9, orange', photo: 'http://res.cloudinary.com/ga-mao/image/upload/v1507649144/project4/nike_ldv_skikrw.jpg')
 Item.create!(name: 'Nike Waffle Racer', description: 'size 9, yellow', photo: 'http://res.cloudinary.com/ga-mao/image/upload/v1507649144/project4/le_samourai_xr8z8q.jpg')
 Item.create!(name: 'Nike Waffle Racer', description: 'size 9, green', photo: 'http://res.cloudinary.com/ga-mao/image/upload/v1507649144/project4/nike_wr_green_hphxu2.jpg')


 puts "#{Item.count} Item created!"

