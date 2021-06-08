# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Feeling.delete_all
User.delete_all
joaquin = User.create!(name: 'joaquin', email: 'email@gmail.com', password: 'password')
puts "Drowning your feelings away..."
puts "Making a real boy out of Pinocchio..."
30.times do
  feelings = %w[happiness admitation luck anger serenity lust love disappointment jealousy strength motivation charmness amusement optimism gratitude desparation enthusiasm]
  description = Faker::Quote.jack_handey
  categories = %w[positive negative empowering vengeful rare]
  price = rand(100..900)
  availability = true
  Feeling.create!(title: feelings.sample, description: description, availibility: availability, category: categories.sample, price: price, user: joaquin)
end
puts 'You can feel again'









