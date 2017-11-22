# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

CATEGORY = ["chinese", "italian", "japanese", "french", "belgian"]

20.times do
  restaurant = Restaurant.create!(
    name: Faker::Coffee.blend_name,
    address: Faker::Address.community,
    phone_number:Faker::PhoneNumber.phone_number,
    category: CATEGORY[rand(0..4)],
    )
end
