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
car = Car.new(brand: "BMW", model: "i8", year: 2018, passengers: 4, color: "white", horsepower: 400, price_per_day: 30, fuel_type: "electric", city: "Lisbon", zipcode: "1000-028", country: "Portugal")
car.user = User.last
car.address = "#{car["city"]},#{car["zipcode"]}"
car.photo = "https://amp.businessinsider.com/images/567830182340f87d008b72f3-750-563.jpg"
car.car_type = CarType.order("RANDOM()").first
car.save

car = Car.new(brand: "Mercedes", model: "C", year: 2017, passengers: 4, color: "black", horsepower: 300, price_per_day: 50, fuel_type: "diesel", city: "Lisbon", zipcode: "1000-058", country: "Portugal")
car.user = User.last
car.address = "#{car["city"]},#{car["zipcode"]}"
car.photo = "https://images.unsplash.com/photo-1474244896358-ce3784088cc8?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2850&q=80"
car.car_type = CarType.order("RANDOM()").first
car.save

car = Car.new(brand: "Porsche", model: "Cayenne", year: 2016, passengers: 6, color: "brown", horsepower: 400, price_per_day: 60, fuel_type: "petrol", city: "Lisbon", zipcode: "1000-070", country: "Portugal")
car.user = User.last
car.address = "#{car["city"]},#{car["zipcode"]}"
car.photo = "https://st.motortrend.com/uploads/sites/10/2015/09/2015-Porsche-Cayenne-S-E-Hybrid-front-three-quarter1.jpg?width=810&height=456"
car.car_type = CarType.order("RANDOM()").first
car.save

car = Car.new(brand: "Lamborghini", model: "Aventador", year: 2016, passengers: 2, color: "orange", horsepower: 750, price_per_day: 100, fuel_type: "gas", city: "Lisbon", zipcode: "1000-101", country: "Portugal")
car.user = User.last
car.address = "#{car["city"]},#{car["zipcode"]}"
car.photo = "https://images.unsplash.com/photo-1532581140115-3e355d1ed1de?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1650&q=80"
car.car_type = CarType.order("RANDOM()").first
car.save

car = Car.new(brand: "Audi", model: "R8", year: 2012, passengers: 2, color: "silver", horsepower: 580, price_per_day: 120, fuel_type: "petrol", city: "Lisbon", zipcode: "1000-102", country: "Portugal")
car.user = User.last
car.address = "#{car["city"]},#{car["zipcode"]}"
car.photo = "https://render.fineartamerica.com/images/rendered/default/greeting-card/images/artworkimages/medium/1/silver-audi-r8-joel-witmeyer.jpg?&targetx=-24&targety=0&imagewidth=749&imageheight=500&modelwidth=700&modelheight=500&backgroundcolor=716856&orientation=0"
car.car_type = CarType.order("RANDOM()").first
car.save

car = Car.new(brand: "VW", model: "Golf", year: 2009, passengers: 4, color: "red", horsepower: 200, price_per_day: 90, fuel_type: "diesel", city: "Lisbon", zipcode: "1000-140", country: "Portugal")
car.user = User.last
car.address = "#{car["city"]},#{car["zipcode"]}"
car.photo = "https://car-images.bauersecure.com/pagefiles/73559/vw-polo-2018-01.jpg"
car.car_type = CarType.order("RANDOM()").first
car.save

car = Car.new(brand: "Mini", model: "Cooper JCW", year: 2015, passengers: 4, color: "green", horsepower: 210, price_per_day: 200, fuel_type: "petrol", city: "Lisbon", zipcode: "1000-143", country: "Portugal")
car.user = User.last
car.address = "#{car["city"]},#{car["zipcode"]}"
car.photo = "https://cdn2.evo.co.uk/sites/evo/files/styles/gallery_adv/public/dsc_6990_0.jpg?itok=CmkqHnhV"
car.car_type = CarType.order("RANDOM()").first
car.save

car = Car.new(brand: "Ferrari", model: "F12 Berlinetta", year: 2016, passengers: 2, color: "red", horsepower: 900, price_per_day: 100, fuel_type: "gas", city: "Lisbon", zipcode: "1000-188", country: "Portugal")
car.user = User.last
car.address = "#{car["city"]},#{car["zipcode"]}"
car.photo = "https://www.carid.com/images/inspiration/ferrari/f12/8/1.jpg"
car.car_type = CarType.order("RANDOM()").first
car.save

car = Car.new(brand: "Aston Martin", model: "DB12", year: 2010, passengers: 4, color: "black", horsepower: 750, price_per_day: 120, fuel_type: "petrol", city: "Lisbon", zipcode: "1000-190", country: "Portugal")
car.user = User.last
car.address = "#{car["city"]},#{car["zipcode"]}"
car.photo = "https://www.motorparks.co.uk/upload/big/20181002113155214_uc_DSC_0342.jpg"
car.car_type = CarType.order("RANDOM()").first
car.save

car = Car.new(brand: "Jaguar", model: "F-Type", year: 2017, passengers: 2, color: "black", horsepower: 650, price_per_day: 100, fuel_type: "diesel", city: "Lisbon", zipcode: "1000-195", country: "Portugal")
car.user = User.last
car.address = "#{car["city"]},#{car["zipcode"]}"
car.photo = "https://5c3ee1ee1de4f0df411c-8a421c0ddd82236d18757cf848cba5b8.ssl.cf1.rackcdn.com/SAJD51EE3JCK48340/7476e16748fa91ad8ed5c25f7db95bfe.jpg"
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

puts "Seeding completed"

