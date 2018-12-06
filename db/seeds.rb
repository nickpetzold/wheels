# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Cleaning database..."
Review.destroy_all
Booking.destroy_all
Car.destroy_all
CarType.destroy_all
User.destroy_all

puts "Creating Users"
user1 = User.create!(first_name: "John", last_name: "Bond", email: "johnbond@gmail.com", password: '123456')
user2 = User.create!(first_name: "Joana", last_name: "Reis", email: "joananreis@gmail.com", password: '123456')
user3 = User.create!(first_name: "Antoine", last_name: "Dupont", email: "antoinedupont@gmail.com", password: '123456')
user4 = User.create!(first_name: "Usain", last_name: "Bolt", email: "usainbolt@gmail.com", password: '123456')
user5 = User.create!(first_name: "Rui", last_name: "Freitas", email: "ruifreitas@gmail.com", password: '123456')





REVIEWS = [
  {title: "Car is in terrible condition", content: "The engine stopped working!", rating: 1},
  {title: "Great Car!", content: "Loved the BMW i8 on my honeymoon", rating: 5},
  {title: "This ride made our roadtrip so smooth!", content: "The seats were so comfy that my son didn't even whine!", rating: 5},
  {title: "Car was very fuel efficient!", content: "I only had to refuel twice and I travelled over 800km!", rating: 4},
  {title: "Flat tires on both front wheels!", content: "The car was running smootly but I suspect the tires had an issue that hadn't been checked by the dealer. It caused me massive headaches!", rating: 2},
  {title: "Perfect car for the sunny weather!", content: "I opened the roof and drove for hours with a very nice breeze! Highly recommended!", rating: 4},
  {title: "Expected much more for the price I paid!!", content: "The seats were badly damaged and the AC was not functioning properly, disappoiting.", rating: 2},
  {title: "Car had issues!", content: "The heater was not working throughout the roadtrip!", rating: 3},
  {title: "Good car overall!", content: "There were some mirnor issues with the windows not closing at first but overall the car was acceptable", rating: 3},
  {title: "Awesome car!", content: "It was my first time driving this model and I loved it so much that I am gonna buy the exact same back home!!", rating: 5},
  {title: "Very adapted to familes", content: "We drove to three different cities and the car was super comfortable! I'll definitely book the same one on our next trip!", rating: 5},
  {title: "Fast fast fast!", content: "Spectacular with a lot of horsepower, highly recommended for any travellers seeking to try out a sports car!", rating: 5}
]


puts "Creating Reviews"
Booking.find_each do |booking|
  rand(0..5).times do
    attributes = REVIEWS.sample
    attributes.merge!(booking_id: booking.id)
    Review.create!(attributes)
  end
  puts "Created #{booking.reviews.count} reviews for Booking #{booking.id}"
end




puts "Seeding completed"

