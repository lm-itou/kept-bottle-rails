# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(id: 1, name: "Admin", email: "info@lmlab.net", password: "secret")

if Rails.env == "development"
  Restaurant.create(name: "Toriyoshi", geo: "E91237573841", user_id: 1)
  Restaurant.create(name: "Kurokiya",  geo: "E91237573842", user_id: 1) 
  Restaurant.create(name: "Suisen",    geo: "E91237573843", user_id: 1)
end
