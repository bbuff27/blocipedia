require 'faker'

5.times do 
  User.create!(
    email: Faker::Internet.unique.email,
    password: "helloworld", 
    role: "standard"
  )
end

5.times do 
  User.create!(
    email: Faker::Internet.unique.email,
    password: "helloworld", 
    role: "premium"
  )
end

5.times do 
  User.create!(
    email: Faker::Internet.unique.email,
    password: "helloworld", 
    role: "admin"
  )
end

users = User.all

20.times do 
  Wiki.create!(
    user: users.sample,
    title: Faker::Hacker.abbreviation,
    body: Faker::Hacker.say_something_smart, 
  )
end

wikis = Wiki.all

Faker::UniqueGenerator.clear

puts "Seed finished"
puts "#{users.count} users created"
puts "#{wikis.count} wikis created"
