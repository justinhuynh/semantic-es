1000.times do
  user_attributes = {
    first_name: "#{Faker::Name.first_name}",
    last_name: "#{Faker::Name.last_name}",
    email: "#{Faker::Internet.email}",
    description: "#{Faker::Lorem.paragraph}"
  }
  User.create!(user_attributes)
end
