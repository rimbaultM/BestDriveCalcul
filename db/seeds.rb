# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Bestdrive = User.new(email: "Bestdrive@gmail.com", password: "bestdrive")
Bestdrive.save!

Michelin = User.new(email: "michelin@gmail.com", password: "michelin")
Michelin.save!
puts "Users created!"
