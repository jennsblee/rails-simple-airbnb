# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Flat.destroy_all

5.times do
  Flat.create!(
    name: Faker::Address.community,
    address: Faker::Address.full_address,
    description: Faker::Movie.quote,
    price_per_night: rand(75..350),
    number_of_guests: rand(1..6),
    image: ['https://cf.bstatic.com/images/hotel/max1024x768/155/155406086.jpg', 'https://q4g9y5a8.rocketcdn.me/wp-content/uploads/2020/02/home-banner-2020-02-min.jpg', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTF-nZUnCukp6GetMRPEOLAntGHqLjEb2X1kQ&usqp=CAU', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTFtpcsmOwRUl9kMrkiKacymNMUesD18aXSHg&usqp=CAU', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRQwOxPgo1wQf86te2IsV1TqUS-o_izuxvcXA&usqp=CAU'].sample
  )
end
