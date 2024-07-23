# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
# User.find_or_create_by(email: 'admin@example.com', password: 'password', password_confirmation: 'password',admin: true) if Rails.env.development?

# db/seeds.rb
categories = ["Electronics", "Books", "Clothing", "Home Appliances"]

30.times do
  Product.create(
    name: Faker::Commerce.product_name,
    description: Faker::Lorem.paragraph,
    price: Faker::Commerce.price(range: 10.0..1000.0),
    category: categories.sample,
    on_sale: [true, false].sample,
    new: [true, false].sample
  )
end
