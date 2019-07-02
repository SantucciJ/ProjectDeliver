# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


# Users
User.destroy_all

User.create!(
             email: "admin@evolution.mu",
             password:              "admin!!",
             admin:     true,
             )

User.create!(
             email: "user@evolution.mu",
             password:              "iamuser",
             admin:     false,
             )

Restaurant.destroy_all

10.times do |n|
  name  = Faker::Company.name
  description = Faker::Company.catch_phrase
  image = "https://via.placeholder.com/200x90.jpg?text=" + name
  Restaurant.create!(name:  name,
               description: description,
               image: image
               )
end