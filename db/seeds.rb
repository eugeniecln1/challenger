puts "Start"

Challenge.destroy_all
RoleModel.destroy_all

RoleModel.create(last_name: "Mascotte", description: "I am here to motivate you and help you grow into the best version of yourself!")
Challenge.create(title: "Start planning for the future", category: "Future me", description: "Where do you picture yourself in 5 years ? At university ? Studying ? Travelling ? Where ? What ? Why ? Now is the time to be ambitious !", role_models_id: 1)

puts "End"
