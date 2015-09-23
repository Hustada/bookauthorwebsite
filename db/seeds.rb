# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create!(name:  "Mark Hustad",
             email: "hustada80@gmail.com",
             password:              "frackers",
             password_confirmation: "frackers",
						 admin: true,
						 activated: true)

99.times do |n|
  name  = Faker::Name.name
  email = "example-#{n+1}@railstutorial.org"
  password = "password"
  User.create!(name:  name,
               email: email,
               password:              password,
               password_confirmation: password)
end

25.times do |n|
  title  = Faker::Lorem.sentence(5)
  body = Faker::Lorem.paragraph(100)
  Post.create!(title:  title,
               body: body)
end