require 'faker'

puts "Cleaning the DB"
Restaurant.destroy_all

puts "Creating wonderful restaurants"

100.times do
  restaurant = Restaurant.new(
    name: Faker::BossaNova.artist,
    city: Faker::Address.city
  )
  restaurant.save
end


puts "Done!!!"
