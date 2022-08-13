# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(id: 1, name: "管理者", email: "info@lmlab.net", password: "secret")

if Rails.env == "development"
  Restaurant.create(name: "橘通店", geo: "E91237573841", user_id: 1)
  Restaurant.create(name: "宮崎駅前店",  geo: "E91237573842", user_id: 1) 
  Restaurant.create(name: "南宮崎店",    geo: "E91237573843", user_id: 1)
end
