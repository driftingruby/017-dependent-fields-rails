# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
10.times do
  user = User.new
  first_name = Faker::Name.first_name
  user.first_name = first_name
  last_name = Faker::Name.last_name
  user.last_name = last_name
  user.email = Faker::Internet.email("#{first_name}.#{last_name}".downcase)
  user.extended_profile = [true,false].sample
  user.save
end
