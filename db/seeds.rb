# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require 'faker'
City.destroy_all
User.destroy_all
Gossip.destroy_all
#Tags.destroy_all
puts "Old data deleted"
paris = City.create(name: "Paris")
nice = City.create(name: " Nice")
7.times do
  City.create(name: Faker::Games::SuperSmashBros.stage)
end
  user = User.create!(pseudo: "R0g3r",description: Faker::Lorem.sentence(word_count: 15, random_words_to_add: 6),email: Faker::Internet.email,age: rand(8..80),city: paris,password: Faker::Name.first_name)

  9.times do
    user = User.create!(pseudo: Faker::Name.first_name,description: Faker::Lorem.sentence(word_count: 15, random_words_to_add: 6),email: Faker::Internet.email,age: rand(8..80),city: paris,password: Faker::Name.first_name)
  end
puts " users done"
  20.times do
    gossip = Gossip.create!(title: Faker::Name.first_name,content: Faker::Lorem.sentence(word_count: 25, random_words_to_add: 10),user: User.all.sample)
  end
  40.times do
    comment = Comment.create(user: User.all.sample,gossip: Gossip.all.sample,content:Faker::Lorem.sentence(word_count: 10, random_words_to_add: 10))
  end
