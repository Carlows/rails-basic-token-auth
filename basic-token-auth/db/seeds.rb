# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

u1 = User.create(email: 'user@example.com', password: 'password')

i1 = Item.create(description: "Computer", price: 120.05)
i1 = Item.create(description: "Cellphone", price: 50.69)
i1 = Item.create(description: "Candy", price: 1.02)