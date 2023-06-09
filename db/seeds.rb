# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

10.times do
  user = User.create!(
    email: Faker::Internet.email,
    password: Faker::Internet.password
  )
end

users = User.all

puts "Users ok"

users.each do |user|
  10.times do
    user.articles.create!(
      title: Faker::Commerce.product_name,
      content: Faker::Lorem.sentence,
    )
  end
end

puts "Articles ok"