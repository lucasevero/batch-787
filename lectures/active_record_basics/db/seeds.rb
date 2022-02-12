require 'faker'

puts "Creating restaurants"
100.times do
  restaurant = Restaurant.new(
    name: Faker::Commerce.brand,
    address: Faker::Address.full_address,
    rating: rand(1..5)
  )
  restaurant.save
end
puts "done!!!!"
