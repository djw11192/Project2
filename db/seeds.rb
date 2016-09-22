# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

if Product.destroy_all

Product.create([
  {name: "Cleaning Cloth", price: "3", image: "black.jpg"},
  {name: "Erasers", price: "5", image: "black.jpg"},
  {name: "Eraser Fluid", price: "7", image: "black.jpg"},
  {name: "Black Markers", price: "3", image: "black.jpg"},
  {name: "Fine Point Markers", price: "5", image: "black.jpg"},
  {name: "Multicolor Markers", price: "4", image: "black.jpg"}
  ])

end
