# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Comment.destroy_all
Location.destroy_all
Restaurant.destroy_all

Location.create(city: "Salt Lake City", state: "Utah", country: "USA")
User.create(name: "Jose", username: "jmelero", password: "123", hometown_id: 1)
Restaurant.create(name: "The Pie", description: "Pizza", location_id: 1, user_id: 1)
Comment.create(content: "Great", user_id: 1, restaurant_id: 1)