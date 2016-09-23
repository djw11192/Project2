# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

if Product.destroy_all

Product.create([
  {name: "Cleaning Cloth", price: "3", image: "cloth.jpg"},
  {name: "Erasers", price: "5", image: "erasers.jpg"},
  {name: "Eraser Fluid", price: "7", image: "spray.jpg"},
  {name: "Regular", price: "3", image: "Regular.jpg"},
  {name: "Fine", price: "4", image: "Fine.jpg"},
  {name: "Multicolor", price: "5", image: "Multicolor.jpg"}
  ])

end
