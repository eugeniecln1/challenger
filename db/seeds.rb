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

mascotte = RoleModel.create(first_name:"Super", last_name: "Challenger", gender:"Neutral", sector:"Tech", description: "I am here to motivate you and help you grow into the best version of yourself!")

elon = RoleModel.create(first_name: "Elon", last_name: "Musk", gender:"Male", sector: "Tech, Entrepreneur", description: "Entrepreneur and businessman who founded X.com in 1999 (which later became PayPal), SpaceX in 2002 and Tesla Motors in 2003. Musk became a multimillionaire in his late 20s when he sold his start-up company, Zip2, to a division of Compaq Computers.", picture: "https://upload.wikimedia.org/wikipedia/commons/thumb/e/ed/Elon_Musk_Royal_Society.jpg/260px-Elon_Musk_Royal_Society.jpg")
riri = RoleModel.create(first_name: "Rihanna", last_name: "Fenty", sector: "Entrepreneur, Entertainment", gender: "Female", description: "Famour singer, entrepreneur, business woman", picture: "https://www.themartinicanwayoflife.com/wp-content/uploads/2016/04/o-RIHANNA-900.jpg")
sofia = RoleModel.create(first_name: "Sofia", last_name: "Kovalevskaya", sector: "Mathematics", gender: "Female", description: "She was the first woman in modern Europe to gain a doctorate in mathematics, the first to join the editorial board of a scientific journal, and the first to be appointed professor of mathematics.", picture: "https://upload.wikimedia.org/wikipedia/commons/thumb/f/f6/Sofja_Wassiljewna_Kowalewskaja_1.jpg/220px-Sofja_Wassiljewna_Kowalewskaja_1.jpg")
ada = RoleModel.create(first_name: "Ada", last_name: "Lovelace", sector: "Mathematics, Programming", gender: "Female", description: "has been called the world's first computer programmer. What she did was write the world's first machine algorithm for an early computing machine that existed only on paper.", picture: "https://upload.wikimedia.org/wikipedia/commons/thumb/c/c0/Ada_Lovelace_Chalon_portrait.jpg/600px-Ada_Lovelace_Chalon_portrait.jpg")


challenge = Challenge.create(title: "Start planning for the future", category: "Future me", description: "Where do you picture yourself in 5 years ? At university ? Studying ? Travelling ? Where ? What ? Why ? Now is the time to be ambitious ! Write it down to remember it", role_model_id: sofia.id)
challenge8 = Challenge.create(title: "Find your Ikagai", category: "Future me", description: "Each individual's ikigai is personal to them and specific to their lives, values and beliefs. It reflects the inner self of an individual and expresses that faithfully, while simultaneously creating a mental state in which the individual feels at ease. Find your Ikagai!", role_model_id: mascotte.id)
challenge9 = Challenge.create(title: "Do research", category: "Future me", description: "Go find about a sector that you are interested in. Is it tech ? Agriculture ? Fashion ? Entrepreneurship ? Remember to think outside of the box !", role_model_id: mascotte.id)
challenge10 = Challenge.create(title: "Find inspiration", category: "Future me", description: "Reach out to somebody that you admire on a personal or professional level and start a conversation", role_model_id: mascotte.id)
challenge11 = Challenge.create(title: "Time to clean up the dirt", category: "Future me", description: "Clear up your social media from anything makes you sad of insecure", role_model_id: sofia.id)


challenge7 = Challenge.create(title: "When was the last to you a sense of success ?", category: "Daily activities", description: "Write down a success of yours in a dairy or on a word document with the competences you needed to make it a success", role_model_id: mascotte.id)
challenge2 = Challenge.create(title: "Go outside", category: "Daily activities", description: "Go out in the sun and take a moment to appreciate the beauty of your world. It is important to feel grateful now and then to be at peace with yourself and with others", role_model: riri)
challenge12 = Challenge.create(title: "I am awesome", category: "Daily activities", description: "Write down up to 5 things you like about yourself. Not so simple right ?", role_model: riri)
challenge13 = Challenge.create(title: "Favorite values", category: "Daily activities", description: "Write down up to 5 qualities you like in others", role_model: riri)
challenge14 = Challenge.create(title: "Me insecure ? Never !", category: "Daily activities", description: "Write down up to 3 insecurities on a piece of paper and get rid of it (trash, fireplace ... Make it eco-friendly 🌿) how did it feel ? Don’t be afraid to be to too dramatic", role_model: riri)
challenge15 = Challenge.create(title: "Baby you're a firework !", category: "Daily activities", description: "Need to get relieved of tensions ? Scream now ! Feeling shy ? Scream louder !! This challenge is for you", role_model: riri)
challenge16 = Challenge.create(title: "Be autonomous", category: "Daily activities", description: "Are you afraid of loneliness ? Do be, doing activities on your own can be very empowering ! Try it out : go for a walk, a museum, a cinema, shopping and experience autonomy and independence !", role_model_id: mascotte.id)


challenge3 = Challenge.create(title: "Discover the world", category: "Curiosity", description: "There's a great documentary for you to watch", role_model_id: elon.id)
challenge4 = Challenge.create(title: "Interested in politics?", category: "Curiosity", description: "Did you know that agriculture is the most polluting industry in the world?", role_model_id: mascotte.id)
challenge17 = Challenge.create(title: "Learn from others", category: "Curiosity", description: "Go find a new role model in your inspiration section ! 😉", role_model_id: mascotte.id)

challenge5 = Challenge.create(title: "What could you do better ?", category: "Interactions", description: "Ask a friend, a family member (someone trustworthy) if they believe that you are a good friend", role_model_id: mascotte.id)
challenge6 = Challenge.create(title: "Be a good friend", category: "Interactions", description: "What is a good friend ? Find some attributes good friends have according to you and impersonnate them for one entire day.", role_model_id: mascotte.id)
challenge18 = Challenge.create(title: "Support others", category: "Interactions", description: "Spot someone around you who looks sad or lonely. Start a conversation or send them a message today to ask them how they are doing.", role_model_id: mascotte.id)
challenge18 = Challenge.create(title: "Make friends", category: "Interactions", description: "Talk to somebody that you seed everybody but to whom you harldy ever talk to or have never talked to. Introduce yourself and start a conversation ! Never miss an opportunity to make friends. And remember, networking is key for a prosperous careers!", role_model_id: mascotte.id)


Participation.create(user_id: user.id, challenge_id: challenge.id, feedback: "I loved it", appreciation: 5, difficulty: 2)
Participation.create(user_id: user.id, challenge_id: challenge2.id, feedback: "It sucked", appreciation: 1, difficulty: 4)
Participation.create(user_id: user2.id, challenge_id: challenge.id, feedback: "Cool, i want more !", appreciation: 4, difficulty: 3)
Participation.create(user_id: user2.id, challenge_id: challenge2.id, feedback: "I thought it was amusing", appreciation: 3, difficulty: 1)

puts "End"
