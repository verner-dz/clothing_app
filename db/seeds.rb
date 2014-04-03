# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

supplier1 = Supplier.create(name: "Tommy Hilfiger", email: "tommy@gmail.com", password: "12345", password_confirmation: "12345")
supplier2 = Supplier.create(name: "Zara", email: "zara@gmail.com", password: "12345", password_confirmation: "12345")
supplier3 = Supplier.create(name: "Chanel", email: "chanel@gmail.com", password: "12345", password_confirmation: "12345")
supplier4 = Supplier.create(name: "Abercrombie", email: "abercromie@gmail.com", password: "12345", password_confirmation: "12345")
supplier5 = Supplier.create(name: "H&M", email: "h&m@gmail.com", password: "12345", password_confirmation: "12345")

product1 = Product.create(name: "Tommy Jeans", qty: 100, price: 10, img_url: "http://bit.ly/1myBl2h", description: "98% Cotton/2% Elastane with Machine Wash", supplier_id: supplier1.id)
product2 = Product.create(name: "Tommy glasses", qty: 100, price: 20, img_url: "http://bit.ly/1g7NcvX", description: "Vintage clear lens wayfarer.", supplier_id: supplier1.id)
product3 = Product.create(name: "Zara Shirt", qty: 100, price: 30, img_url: "http://bit.ly/1o8mttb", description: "Cotton, machine wash", supplier_id: supplier2.id)
product4 = Product.create(name: "Chanel coat", qty: 100, price: 40, img_url: "http://bit.ly/1hizOKh", description: "leopard print lining", supplier_id: supplier3.id)
product5 = Product.create(name: "Abercrombie pants", qty: 100, price: 50, img_url: "http://bit.ly/1i1GQ3V", description: "Pin striped, machine wash", supplier_id: supplier4.id)
product6 = Product.create(name: "H&M scarf", qty: 100, price: 60, img_url: "http://bit.ly/1i1GPwK", description: "Super soft cashmere feel, 100% Acrylic", supplier_id: supplier5.id)

user1 = User.create(name: "Verner D'souza", email: "verner@gmail.com", password: "12345", password_confirmation: "12345", admin: true )
user2 = User.create(name: "Alex Shook", email: "alex@gmail.com", password: "12345", password_confirmation: "12345", admin: false )





