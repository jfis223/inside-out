# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Erasing your past mistakes..."

Booking.delete_all

Review.delete_all

Feeling.delete_all

User.delete_all

joaquin = User.create!(name: 'joaquin', email: 'email@gmail.com', password: 'password')

puts "Making a real boy out of Pinocchio..."

availability = true

# Feeling 1: Happiness
happiness = Feeling.create!(title: 'Happiness', description: 'Finest quality, directly extracted from a farm of orphan children.', availibility: availability, category: 'positive', price: 100, sideeffects: 'May create addiction if purchased for more than three days. Also, flatulence and headaches could occur after 24 hours.', recommendedto: 'Stressed or depressed people. Not recommended for animals.', care: 'Do not mix with alcohol or antidepressants.', user: joaquin)
happiness_image = open('https://i.guim.co.uk/img/media/c26ced2bb6cbf1e770623712c0b02e1a5b024edd/144_128_4584_2750/master/4584.jpg?width=1200&height=1200&quality=85&auto=format&fit=crop&s=46fe063141efb834efff2ab50455fde8')
happiness.image.attach(io: happiness_image, filename: 'image.jpg')

# Feeling 2: Courage

courage = Feeling.create!(title: 'Courage', description: 'Scared of facing your boss? Tired of being trodden over by someone? Grab some courage to tell them off!', availibility: availability, category: 'empowering', price: 500, sideeffects: "Consequences of your actions are not covered by this feeling's insurance.", recommendedto: 'Anxious people that are scared for the future.', care: 'Not compatible with self-help books.', user: joaquin)
courage_image = open('https://i.pinimg.com/originals/5e/28/c6/5e28c645745008a57f530d1afacafa13.jpg')
courage.image.attach(io: courage_image, filename: 'image.jpg')

# Feeling 3: Jealousy

jealousy = Feeling.create!(title: 'Jealousy', description: 'New car? New haircut? Inspire the amount of envy you deserve.', availibility: availability, category: 'vengeful', price: 900, sideeffects: "Potential murderous actions torwards your person could be inspired on others.", recommendedto: 'Influencers.', care: "Don't look in the mirror while using it.", user: joaquin)
jealousy_image = open('https://images.squarespace-cdn.com/content/5846e23b9de4bb2223aa6b3f/1567521070334-S8YLNAURGI22X37W26FG/Envy+Blog+Ice+Cream.jpg')
jealousy.image.attach(io: jealousy_image, filename: 'image.jpg')

# Feeling 4: Sadness

sadness = Feeling.create!(title: 'Sadness', description: "Are you an actor and can't cry on queue? Just rent this out and prepare yourself for the Oscars.", availibility: availability, category: 'negative', price: 30, sideeffects: "Continued exposure could generate depression and suicide thoughts.", recommendedto: 'Actors and drama queens.', care: "Don't listen to ballads while using it", user: joaquin)
sadness_image = open('https://images.unsplash.com/photo-1516585427167-9f4af9627e6c?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=2900&q=80')
sadness.image.attach(io: sadness_image, filename: 'image.jpg')

# Feeling 5: Luck

luck = Feeling.create!(title: 'Luck', description: "Not ready for an exam? We've got you covered!", availibility: availability, category: 'rare', price: 3000, sideeffects: "Frustration and feeling cursed after renting period is over.", recommendedto: 'Anyone needing an extra push to achieve something.', care: "Don't break any mirrors or walk under ladders while using it", user: joaquin)
luck_image = open('https://images.unsplash.com/photo-1507667895043-c4de59dda180?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1878&q=80')
luck.image.attach(io: luck_image, filename: 'image.jpg')

# Feeling 6: Happiness
happiness2 = Feeling.create!(title: 'Happiness', description: 'Smile a lot and cry less.', availibility: availability, category: 'positive', price: 500, sideeffects: 'None that we know of!', recommendedto: 'Everyone should experience it!', care: 'If you start seeing baloons everywhere please stop renting it for a month before trying again', user: joaquin)
happiness2_image = open('https://www.theorthodontists.com.au/theme/theorthodontistscomau/assets/public/Image/blog/Relationship_Between_Face_and_Smile_-_2.jpg')
happiness2.image.attach(io: happiness2_image, filename: 'image.jpg')

puts 'You can feel again'
