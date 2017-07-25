# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Product.create(
  name: "toothbrush",
  description: "medium, green handle",
  price_in_cents: 200
)

Product.create(
  name: "hairbrush",
  description: "round brush for blowdrying",
  price_in_cents: 500
)

Product.create(
  name: "shampoo",
  description: "best for dandruff",
  price_in_cents: 800
)

Product.create(
  name: "conditioner",
  description: "best for dandruff",
  price_in_cents: 900
)

Product.create(
  name: "toothpaste",
  description: "cavity fighting action",
  price_in_cents: 300
)
