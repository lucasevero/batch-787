require_relative "config/application"
require "sinatra"
require "sinatra/reloader"
require "sinatra/activerecord"

get "/" do
  @restaurants = Restaurant.all

  erb :index
end

get '/restaurants/:id' do
  restaurant_id = params[:id]
  @restaurant = Restaurant.find(restaurant_id)

  erb :show
end

post '/restaurants' do
  name = params[:name]
  city = params[:city]

  new_restaurant = Restaurant.new(
    name: name,
    city: city
  )
  new_restaurant.save

  redirect '/'
end
