# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

if Product.destroy_all

Product.create([
  {name: "Extra Markers", price: "3"},
  {name: "Erasers", price: "5"},
  {name: "Eraser Fluid", price: "7"}
  ])

end
