# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'pry-byebug'
puts "Cleaning database..."
Review.destroy_all
Booking.destroy_all
Car.destroy_all
CarType.destroy_all
User.destroy_all

puts "Creating Car Types"
car_types = %w[convertible 4x4 sports vintage SUV]
car_types.each do |type|
 car_type = CarType.new(car_type: type)
 car_type.save
end

puts "Creating Users"
user1 = User.create!(first_name: "John", last_name: "Bond", email: "johnbond@gmail.com", password: '123456')
user2 = User.create!(first_name: "Joana", last_name: "Reis", email: "joananreis@gmail.com", password: '123456')
user3 = User.create!(first_name: "Antoine", last_name: "Dupont", email: "antoinedupont@gmail.com", password: '123456')
user4 = User.create!(first_name: "Usain", last_name: "Bolt", email: "usainbolt@gmail.com", password: '123456')
user5 = User.create!(first_name: "Rui", last_name: "Freitas", email: "ruifreitas@gmail.com", password: '123456')



puts "Creating Cars"
car = Car.new(brand: "BMW", model: "i8", year: 2018, passengers: 4, color: "white", horsepower: 400, price_per_day: 150, fuel_type: "electric", city: "Lisbon", zipcode: "1000-028", country: "Portugal")
car.user = user1
car.address = "Avenida de Berna 45,#{car["city"]}"
car.photo ="https://res.cloudinary.com/dajppgk4c/image/upload/v1544011669/cars%20-%20wheels/567830182340f87d008b72f3-750-563.jpg"
car.car_type = CarType.order("RANDOM()").first
car.save

car = Car.new(brand: "Mercedes", model: "C", year: 2017, passengers: 4, color: "black", horsepower: 300, price_per_day: 85, fuel_type: "diesel", city: "Lisbon", zipcode: "1000-058", country: "Portugal")
car.user = user2
car.address = "Rua das trinas,#{car["city"]}"
car.photo = "https://res.cloudinary.com/dajppgk4c/image/upload/v1544012611/cars%20-%20wheels/photo-mercedesC.jpg"
car.car_type = CarType.order("RANDOM()").first
car.save

car = Car.new(brand: "Porsche", model: "Cayenne", year: 2016, passengers: 6, color: "brown", horsepower: 400, price_per_day: 140, fuel_type: "petrol", city: "Lisbon", zipcode: "1000-070", country: "Portugal")
car.user = user3
car.address = "Rua Professor Lima Basto,#{car["city"]}"
car.photo ="https://res.cloudinary.com/dajppgk4c/image/upload/v1544012927/cars%20-%20wheels/2015-Porsche-Cayenne.jpg"
car.car_type = CarType.order("RANDOM()").first
car.save

car = Car.new(brand: "Lamborghini", model: "Aventador", year: 2016, passengers: 2, color: "orange", horsepower: 750, price_per_day: 200, fuel_type: "gas", city: "Lisbon", zipcode: "1000-101", country: "Portugal")
car.user = user4
car.address = "Rua Padre António Vieira 1,#{car["city"]}"
car.photo = "https://res.cloudinary.com/dajppgk4c/image/upload/v1544012968/cars%20-%20wheels/lambo-orange.jpg"
car.car_type = CarType.order("RANDOM()").first
car.save

car = Car.new(brand: "Audi", model: "R8", year: 2012, passengers: 2, color: "silver", horsepower: 580, price_per_day: 150, fuel_type: "petrol", city: "Lisbon", zipcode: "1000-102", country: "Portugal")
car.user = user5
car.address = "Torre de Belem,#{car["city"]}"
car.photo = "https://res.cloudinary.com/dajppgk4c/image/upload/v1544013059/cars%20-%20wheels/silver-audi-r8.jpg"
car.car_type = CarType.order("RANDOM()").first
car.save

car = Car.new(brand: "VW", model: "Golf", year: 2009, passengers: 4, color: "red", horsepower: 200, price_per_day: 35, fuel_type: "diesel", city: "Lisbon", zipcode: "1000-140", country: "Portugal")
car.user = user1
car.address = "Avenida 5 de Outubro,#{car["city"]}"
car.photo = "https://res.cloudinary.com/dajppgk4c/image/upload/v1544013119/cars%20-%20wheels/vw-golf-red.jpg"
car.car_type = CarType.order("RANDOM()").first
car.save

car = Car.new(brand: "Mini", model: "Cooper JCW", year: 2015, passengers: 4, color: "green", horsepower: 210, price_per_day: 60, fuel_type: "petrol", city: "Lisbon", zipcode: "1000-143", country: "Portugal")
car.user = user1
car.address = "Avenida Fontes Pereira de Melo,#{car["city"]}"
car.photo = "https://res.cloudinary.com/dajppgk4c/image/upload/v1544013183/cars%20-%20wheels/mini-jsw-green.jpg"
car.car_type = CarType.order("RANDOM()").first
car.save

car = Car.new(brand: "Ferrari", model: "F12 Berlinetta", year: 2016, passengers: 2, color: "red", horsepower: 900, price_per_day: 300, fuel_type: "gas", city: "Lisbon", zipcode: "1000-188", country: "Portugal")
car.user = user1
car.address = "Rua Carlos Testa,#{car["city"]}"
car.photo = "https://res.cloudinary.com/dajppgk4c/image/upload/v1544013217/cars%20-%20wheels/ferrari-berli-red.jpg"
car.car_type = CarType.order("RANDOM()").first
car.save

car = Car.new(brand: "Aston Martin", model: "DB12", year: 2010, passengers: 4, color: "black", horsepower: 750, price_per_day: 280, fuel_type: "petrol", city: "Lisbon", zipcode: "1000-190", country: "Portugal")
car.user = user1
car.address = "Santa apolonia,#{car["city"]}"
car.photo = "https://res.cloudinary.com/dajppgk4c/image/upload/v1544013265/cars%20-%20wheels/astonmartin_db12_black.jpg"
car.car_type = CarType.order("RANDOM()").first
car.save

car = Car.new(brand: "Jaguar", model: "F-Type", year: 2017, passengers: 2, color: "black", horsepower: 650, price_per_day: 220, fuel_type: "diesel", city: "Lisbon", zipcode: "1000-195", country: "Portugal")
car.user = user1
car.address = "Alta de Lisboa,#{car["city"]}"
car.photo = "https://res.cloudinary.com/dajppgk4c/image/upload/v1544013312/cars%20-%20wheels/jaguar-ftype-black.jpg"
car.car_type = CarType.order("RANDOM()").first
car.save

puts "Creating Bookings"
booking = Booking.new
booking.car = Car.all.sample
booking.user = booking.car.user
booking.date_from = Date.new(2018,10,3)
booking.date_to = booking.date_from + rand(10)

booking.price = (booking.date_to - booking.date_from).to_i * booking.car.price_per_day
booking.save

booking = Booking.new
booking.car = Car.all.sample
booking.user = booking.car.user
booking.date_from = Date.new(2018,1,3)
booking.date_to = booking.date_from + rand(10)
booking.price = (booking.date_to - booking.date_from).to_i * booking.car.price_per_day
booking.save

booking = Booking.new
booking.car = Car.all.sample
booking.user = booking.car.user
booking.date_from = Date.new(2018,8,3)
booking.date_to = booking.date_from + rand(10)
booking.price = (booking.date_to - booking.date_from).to_i * booking.car.price_per_day
booking.save

booking = Booking.new
booking.car = Car.all.sample
booking.user = booking.car.user
booking.date_from = Date.new(2018,9,3)
booking.date_to = booking.date_from + rand(10)
booking.price = (booking.date_to - booking.date_from).to_i * booking.car.price_per_day
booking.save

booking = Booking.new
booking.car = Car.all.sample
booking.user = booking.car.user
booking.date_from = Date.new(2018,2,3)
booking.date_to = booking.date_from + rand(10)
booking.price = (booking.date_to - booking.date_from).to_i * booking.car.price_per_day
booking.save

booking = Booking.new
booking.car = Car.all.sample
booking.user = booking.car.user
booking.date_from = Date.new(2018,7,3)
booking.date_to = booking.date_from + rand(10)
booking.price = (booking.date_to - booking.date_from).to_i * booking.car.price_per_day
booking.save

booking = Booking.new
booking.car = Car.all.sample
booking.user = booking.car.user
booking.date_from = Date.new(2018,7,7)
booking.date_to = booking.date_from + rand(10)
booking.price = (booking.date_to - booking.date_from).to_i * booking.car.price_per_day
booking.save

booking = Booking.new
booking.car = Car.all.sample
booking.user = booking.car.user
booking.date_from = Date.new(2018,8,2)
booking.date_to = booking.date_from + rand(10)
booking.price = (booking.date_to - booking.date_from).to_i * booking.car.price_per_day
booking.save

booking = Booking.new
booking.car = Car.all.sample
booking.user = booking.car.user
booking.date_from = Date.new(2018,6,14)
booking.date_to = booking.date_from + rand(10)
booking.price = (booking.date_to - booking.date_from).to_i * booking.car.price_per_day
booking.save

booking = Booking.new
booking.car = Car.all.sample
booking.user = booking.car.user
booking.date_from = Date.new(2018,5,2)
booking.date_to = booking.date_from + rand(10)
booking.price = (booking.date_to - booking.date_from).to_i * booking.car.price_per_day
booking.save

booking = Booking.new
booking.car = Car.all.sample
booking.user = booking.car.user
booking.date_from = Date.new(2018,11,1)
booking.date_to = booking.date_from + rand(10)
booking.price = (booking.date_to - booking.date_from).to_i * booking.car.price_per_day
booking.save

booking = Booking.new
booking.car = Car.all.sample
booking.user = booking.car.user
booking.date_from = Date.new(2018,9,5)
booking.date_to = booking.date_from + rand(10)
booking.price = (booking.date_to - booking.date_from).to_i * booking.car.price_per_day
booking.save

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

