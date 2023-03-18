# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

# Book.create(title: "Wahala", description:"lorem lorem lorem")
# Book.create(title: "Africans", description:"lorem lorem lorem")
# Book.create(title: "Sex Lives of African Women", description:"lorem lorem lorem")

# Book.create([{title: "Wahala", description:"lorem lorem lorem"}, {title: "Africans", description:"lorem lorem lorem"}, {title: "Sex Lives of African Women", description:"lorem lorem lorem"}])

Book.create(title:Faker::Book.title, author:Faker::Book.author, genre:Faker::Book.genre, image:"https://upload.wikimedia.org/wikipedia/en/c/cd/Wahala_%28novel%29.jpg" )
Book.create(title:Faker::Book.title, author:Faker::Book.author, genre:Faker::Book.genre, image: "https://upload.wikimedia.org/wikipedia/en/c/cd/Wahala_%28novel%29.jpg")
Book.create(title:Faker::Book.title, author:Faker::Book.author, genre:Faker::Book.genre, image: "https://upload.wikimedia.org/wikipedia/en/c/cd/Wahala_%28novel%29.jpg")
Book.create(title:Faker::Book.title, author:Faker::Book.author, genre:Faker::Book.genre, image: "https://upload.wikimedia.org/wikipedia/en/c/cd/Wahala_%28novel%29.jpg")