# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user_1 = User.create(name: Faker::Name.name, street_address: Faker::Address.street_address, city: Faker::Address.city, state: Faker::Address.state, zipcode: Faker::Address.zip_code)
user_2 = User.create(name: Faker::Name.name, street_address: Faker::Address.street_address, city: Faker::Address.city, state: Faker::Address.state, zipcode: Faker::Address.zip_code)
user_3 = User.create(name: Faker::Name.name, street_address: Faker::Address.street_address, city: Faker::Address.city, state: Faker::Address.state, zipcode: Faker::Address.zip_code)
user_4 = User.create(name: Faker::Name.name, street_address: Faker::Address.street_address, city: Faker::Address.city, state: Faker::Address.state, zipcode: Faker::Address.zip_code)
user_5 = User.create(name: Faker::Name.name, street_address: Faker::Address.street_address, city: Faker::Address.city, state: Faker::Address.state, zipcode: Faker::Address.zip_code)

Item.create(description: Faker::Commerce.product_name, quantity: Faker::Number.non_zero_digit, user_id: user_1.id)
Item.create(description: Faker::Commerce.product_name, quantity: Faker::Number.non_zero_digit, user_id: user_2.id)
Item.create(description: Faker::Commerce.product_name, quantity: Faker::Number.non_zero_digit, user_id: user_3.id)
Item.create(description: Faker::Commerce.product_name, quantity: Faker::Number.non_zero_digit, user_id: user_4.id)
Item.create(description: Faker::Commerce.product_name, quantity: Faker::Number.non_zero_digit, user_id: user_5.id)