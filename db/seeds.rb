# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
50.times do |index|
  Product.create!(name: Faker::Food.ingredient,
                  cost: Faker::Number.decimal(2),
                  country: Faker::StarWars.planet
                 )
end

Product.create!(name: 'Local Product',
                cost: 1.00,
                country: 'United States'
               )

250.times do |index|
  Review.create!(author: Faker::RickAndMorty.character,
                 content_body: Faker::Internet.user_name(51...249),
                 rating: Faker::Number.between(1, 5),
                 product_id: Faker::Number.between(Product.first.id, Product.last.id)
                )
end
