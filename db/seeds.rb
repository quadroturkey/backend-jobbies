# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# 20.times do 
#   User.create(
#     username: Faker::Name.name_with_middle,
#     password_digest: Faker::Alphanumeric.alphanumeric(number: 10),
#     bio: Faker::GreekPhilosophers.quote,
#     avatar: Faker::Avatar.image
#   )
# end

User.create(
  username: 'r',
  password: 'r',
  bio: Faker::GreekPhilosophers.quote,
  avatar: Faker::Avatar.image
)

# 20.times do 
#   Tracker.create(
#     user_id: 1,
#     title: Faker::Company.profession,
#     company: Faker::Company.name,
#     description: Faker::Company.bs
#   )
# end


