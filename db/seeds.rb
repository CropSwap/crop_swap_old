# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# 100.times do
#   User.create!
#     (name = Faker::Name.name, email = Faker::Internet.email,
#     phone_number = Faker::PhoneNumber.phone_number,
#     description = Faker::Lorem.sentence, zip_code = Faker::Address.zip_code)
# end

User.create!(email: "ruti@mail.com")
User.create!(email: "eric@mail.com")
User.create!(email: "mason@mail.com")
User.create!(email: "kelly@mail.com")

CropType.create!(crop_type: "potato")
CropType.create!(crop_type: "tomato")
CropType.create!(crop_type: "beet")
CropType.create!(crop_type: "carrot")
CropType.create!(crop_type: "radish")
CropType.create!(crop_type: "spinach")
CropType.create!(crop_type: "watermelon")
