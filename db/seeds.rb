# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Drowning your feelings away..."
Feeling.delete_all

puts "Making a real boy out of Pinocchio..."

feelings = %w[happiness admitation luck anger serenity lust love disappointment jealousy strength motivation charmness amusement optimism gratitude desparation enthusiasm]

description = Faker::Quote.jack_handey

categories = %w[positive negative empowering vengeful rare]

image = 'https://source.unsplash.com/random'

price = rand(100..900)

availability = true

30.times do
  feeling = Feeling.new(title: feelings.sample, description: description, image: image, availability: availability, category: categories.sample, price: price)
  feeling.save
end

puts 'You can feel again'
