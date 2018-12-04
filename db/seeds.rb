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

puts "Creating Car Types"
car_types = %w[convertible 4x4 sports vintage SUV]
car_types.each do |type|
 car_type = CarType.new(car_type: type)
 car_type.save
end


puts "Creating Cars"
car = Car.new(brand: "BMW", model: "i8", year: 2018, passengers: 4, color: "white", horsepower: 400, price_per_day: 30, fuel_type: "electric", city: "Lisbon", zipcode: "1170-100", country: "Portugal")
car.user = User.last
car.car_type = CarType.order("RANDOM()").first
car.save

car = Car.new(brand: "Mercedes", model: "C", year: 2017, passengers: 4, color: "black", horsepower: 300, price_per_day: 50, fuel_type: "diesel", city: "Lisbon", zipcode: "1200-401", country: "Portugal")
car.user = User.last
car.car_type = CarType.order("RANDOM()").first
car.save

car = Car.new(brand: "Porsche", model: "Cayenne", year: 2016, passengers: 6, color: "brown", horsepower: 400, price_per_day: 60, fuel_type: "petrol", city: "Lisbon", zipcode: "1250-144", country: "Portugal")
car.user = User.last
car.car_type = CarType.order("RANDOM()").first
car.save

car = Car.new(brand: "Lamborghini", model: "Aventador", year: 2016, passengers: 2, color: "orange", horsepower: 750, price_per_day: 100, fuel_type: "gas", city: "Lisbon", zipcode: "1100-341", country: "Portugal")
car.user = User.last
car.car_type = CarType.order("RANDOM()").first
car.save

car = Car.new(brand: "Audi", model: "R8", year: 2012, passengers: 2, color: "silver", horsepower: 580, price_per_day: 120, fuel_type: "petrol", city: "Lisbon", zipcode: "1170-166", country: "Portugal")
car.user = User.last
car.car_type = CarType.order("RANDOM()").first
car.save

car = Car.new(brand: "VW", model: "Golf", year: 2009, passengers: 4, color: "red", horsepower: 200, price_per_day: 90, fuel_type: "diesel", city: "Lisbon", zipcode: "1950-144", country: "Portugal")
car.user = User.last
car.car_type = CarType.order("RANDOM()").first
car.save

car = Car.new(brand: "Mini", model: "Cooper JCW", year: 2015, passengers: 4, color: "green", horsepower: 210, price_per_day: 200, fuel_type: "petrol", city: "Lisbon", zipcode: "1990-196", country: "Portugal")
car.user = User.last
car.car_type = CarType.order("RANDOM()").first
car.save

car = Car.new(brand: "Ferrari", model: "F12 Berlinetta", year: 2016, passengers: 2, color: "red", horsepower: 900, price_per_day: 100, fuel_type: "gas", city: "Lisbon", zipcode: "2685-223", country: "Portugal")
car.user = User.last
car.car_type = CarType.order("RANDOM()").first
car.save

car = Car.new(brand: "Aston Martin", model: "DB12", year: 2010, passengers: 4, color: "yellow", horsepower: 750, price_per_day: 120, fuel_type: "petrol", city: "Lisbon", zipcode: "1495-718", country: "Portugal")
car.user = User.last
car.car_type = CarType.order("RANDOM()").first
car.save

car = Car.new(brand: "Jaguar", model: "F-Type", year: 2017, passengers: 2, color: "black", horsepower: 650, price_per_day: 100, fuel_type: "diesel", city: "Lisbon", zipcode: "2770-023", country: "Portugal")
car.user = User.last
car.car_type = CarType.order("RANDOM()").first
car.save

puts "Creating Bookings"
booking = Booking.new
booking.car = Car.order("RANDOM()").first
booking.user = User.last
booking.date_from = Date.new(2019,10,3)
booking.date_to = booking.date_from + rand(10)
booking.price = (booking.date_to - booking.date_from).to_i * booking.car.price_per_day
booking.save

booking = Booking.new
booking.car = Car.order("RANDOM()").first
booking.user = User.last
booking.date_from = Date.new(2019,1,3)
booking.date_to = booking.date_from + rand(10)
booking.price = (booking.date_to - booking.date_from).to_i * booking.car.price_per_day
booking.save

booking = Booking.new
booking.car = Car.order("RANDOM()").first
booking.user = User.last
booking.date_from = Date.new(2019,8,3)
booking.date_to = booking.date_from + rand(10)
booking.price = (booking.date_to - booking.date_from).to_i * booking.car.price_per_day
booking.save

booking = Booking.new
booking.car = Car.order("RANDOM()").first
booking.user = User.last
booking.date_from = Date.new(2019,9,3)
booking.date_to = booking.date_from + rand(10)
booking.price = (booking.date_to - booking.date_from).to_i * booking.car.price_per_day
booking.save

booking = Booking.new
booking.car = Car.order("RANDOM()").first
booking.user = User.last
booking.date_from = Date.new(2019,2,3)
booking.date_to = booking.date_from + rand(10)
booking.price = (booking.date_to - booking.date_from).to_i * booking.car.price_per_day
booking.save

puts "Creating Reviews"
review = Review.new(title: "Car is in terrible condition", content: "Engine stopped working", rating: 1)
review.booking = Booking.first
review.save

review = Review.new(title: "Great Car!", content: "Loved the BMW i8 on my honeymoon", rating: 5)
review.booking = Booking.last
review.save

review2 = Review.new(title: "Awesome car.", content: "Loved the car, apart from a few noises.", rating: 4)
review2.booking = Booking.last
review2.save

puts "Seeding completed"

