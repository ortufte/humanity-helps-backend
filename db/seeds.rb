# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Site.destroy_all
Item.destroy_all
Day.destroy_all

site_1 = Site.create(name: Faker::Name.name, street_address: Faker::Address.street_address, city: Faker::Address.city, state: Faker::Address.state, zipcode: 55912)
site_2 = Site.create(name: Faker::Name.name, street_address: Faker::Address.street_address, city: Faker::Address.city, state: Faker::Address.state, zipcode: 55912)
site_3 = Site.create(name: Faker::Name.name, street_address: Faker::Address.street_address, city: Faker::Address.city, state: Faker::Address.state, zipcode: 55912)
site_4 = Site.create(name: Faker::Name.name, street_address: Faker::Address.street_address, city: Faker::Address.city, state: Faker::Address.state, zipcode: 55912)
site_5 = Site.create(name: Faker::Name.name, street_address: Faker::Address.street_address, city: Faker::Address.city, state: Faker::Address.state, zipcode: 55912)

Item.create(description: Faker::Commerce.product_name, quantity: Faker::Number.non_zero_digit, site_id: site_1.id)
Item.create(description: Faker::Commerce.product_name, quantity: Faker::Number.non_zero_digit, site_id: site_2.id)
Item.create(description: Faker::Commerce.product_name, quantity: Faker::Number.non_zero_digit, site_id: site_3.id)
Item.create(description: Faker::Commerce.product_name, quantity: Faker::Number.non_zero_digit, site_id: site_4.id)
Item.create(description: Faker::Commerce.product_name, quantity: Faker::Number.non_zero_digit, site_id: site_5.id)

Day.create(day_of_week: Faker::Date.forward, start_time: "06:00", end_time: "07:00", site_id: site_1.id)
Day.create(day_of_week: Faker::Date.forward, start_time: "12:00", end_time: "04:00", site_id: site_2.id)
Day.create(day_of_week: Faker::Date.forward, start_time: "11:00", end_time: "01:00", site_id: site_3.id)
Day.create(day_of_week: Faker::Date.forward, start_time: "05:00", end_time: "07:00", site_id: site_4.id)
Day.create(day_of_week: Faker::Date.forward, start_time: "05:00", end_time: "07:00", site_id: site_5.id)
