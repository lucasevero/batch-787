class Restaurant < ActiveRecord::Base
end

# # Create
# madero = Restaurant.new(name: "Madero")
# madero.save

# # Update
# madero.name = "New Madero"
# madero.save

# # Read (all || one)
# Restaurant.all # array of Restaurants instances
# Restaurant.find(1)
# Restaurant.find_by(name: "New Madero")

# # Delete
# madero.destroy
