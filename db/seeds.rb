# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Start"

Challenge.destroy_all
RoleModel.destroy_all
Participation.destroy_all
User.destroy_all

user = User.create(email:"a@a.com", password: "challenge", username: "aha")
user2 = User.create(email:"yo@yo.com", password: "challenge", username: "yoyo")

mascotte = RoleModel.create(last_name: "Mascotte", description: "I am here to motivate you and help you grow into the best version of yourself!")
einstein = RoleModel.create(last_name: "Einstein", description: "Science!")

challenge = Challenge.create(title: "Start planning for the future", category: "Future me", description: "Where do you picture yourself in 5 years ? At university ? Studying ? Travelling ? Where ? What ? Why ? Now is the time to be ambitious !", role_model_id: mascotte.id)
challenge2 = Challenge.create(title: "Go outside", category: "Daily activities", description: "Go out in the sun and take a moment to appreciate the beauty of your world", role_model_id: einstein.id)


Participation.create(user_id: user.id, challenge_id: challenge.id, feedback: "I loved it")
Participation.create(user_id: user.id, challenge_id: challenge2.id, feedback: "It sucked")
Participation.create(user_id: user2.id, challenge_id: challenge.id, feedback: "Cool, i want more !")
Participation.create(user_id: user2.id, challenge_id: challenge2.id, feedback: "I thought it was amusing")

puts "End"
