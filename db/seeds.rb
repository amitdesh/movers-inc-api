# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Inventory.delete_all

Inventory.create(name: 'Couch', price: 100)
Inventory.create(name: 'Desk', price: 50)
Inventory.create(name: 'Bed', price: 100)
Inventory.create(name: 'Chair', price: 25)
Inventory.create(name: 'Boxes', price: 20)
Inventory.create(name: 'Art', price: 100)
Inventory.create(name: 'Plants', price: 15)
Inventory.create(name: 'Appliances', price: 60)
