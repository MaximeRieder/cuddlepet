# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Pet.destroy_all
User.destroy_all
users_list = [
  [ "max@yahoo.com", "81831000", 1 ],
  [ "alex@gmail.com", "65447374", 2 ],
  [ "ejdat@hotmail.com", "10839905", 3 ]
]

pets_list = [
  ["cat", "black and white", 50, 1, "Rue de l'Industrie, Bussigny"],
  ["dog", "bulldog anglais", 100, 2, "Chemin des Jonchets, Bussigny"],
  ["dolphin", "blue", 1000, 3, "Avenue du 14-Avril, Crissier"]
]

users_list.each do |email, password, id|
  User.create!( email: email, password: password, id: id)
end

pets_list.each do |name, desc, price, user_id, address|
  Pet.create!( name: name, description: desc, price: price, user_id: user_id, address: address )
end




