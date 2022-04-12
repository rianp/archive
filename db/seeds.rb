# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

User.create(username: "admin", email: "admin@example.com", password: "password", password_confirmation: "password")
User.create(username: "rian", email: "rian@example.com", password: "password", password_confirmation: "password")
User.create(username: "fifi", email: "fifi@example.com", password: "password", password_confirmation: "password")

10.times do |x|
  Upload.create(name: "Cool #{x} Name", 
                description: "This #{x} is a description of #{x}",
                thumbnail: "pink.jpg",
                user_id: User.first.id)
  
  Upload.create(name: "Happy #{x} Asset", 
                description: "Nice #{x} describing a way cute #{x}",
                thumbnail: "purple.jpg",
                user_id: User.first.id)

  Upload.create(name: "Whoa #{x} File", 
                description: "This #{x} is the best #{x} thingy",
                thumbnail: "swirl.jpg",
                user_id: User.first.id) 
end
