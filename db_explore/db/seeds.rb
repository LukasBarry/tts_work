# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

def random_string(x)
  ('a'..'z').to_a.shuffle[0...x].join
end

10.times do
  User.create(name:random_string(8), age:(1..100).to_a.sample, city:random_string(18))
end
