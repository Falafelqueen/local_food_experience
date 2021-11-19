require "faker"

# User.destroy_all
# Experience.destroy_all

# cities = ["Barcelona, Spain", "Madrid, Spain", "Paris, France", "Lyon, France", "London, England", "Manchester, England",
#           "Luxembourg, Luxembourg", "Berlin, Germany", "Munich, Germany", "Canberra, Australia", "Wellington, New Zealand",
#           "Lima, Peru", "Washington, United States", "New York, United States", "Lisbon, Portugal", "Oslo, Norway", "Beijing, China",
#           "Tokyo, Japan", "Dijon, France", "Stockholm, Sweden", "Bratislava, Slovakia", "Buenos Aires, Argentina", "Cusco, Peru",
#           "Medellin, Colombia", "Bologna, Italy", "Napoli, Italy", "Caracas, Venezuela", "Moscow, Russia", "Rekjavik, Iceland", "Helsinki, Finland",
#           "Prievidza, Slovakia", "Bilbao, Spain", "Sofia, Bulgaria", "Belgrade, Serbia", "Alger, Algeria", "Cairo, Egypt", "Tunis, Tunisia", "Cape Town, South Affrica",
#           "Istanbul, Turkey", "Niger, Nigeria", "Antananarivo, Madagascar", "Dakar, Senegal", "Macon, France", "Osaka, Japan", "Kyoto, Japan", "New Dehli, India", "Taipei, Taiwan",
#           "Brussels, Belgium", "Valencia, Venezuela", "Valencia, Spain", "Valence, France", "Seoul, South Korea", "Hong Kong, Honk Kong", "Bangkok, Thailand", "Phnom Penh, Cambodia",
#           "Cancun, Mexico", "Tulum, Mexico", "San Cristobal de las casas, Mexico", "Guadalajara, Mexico", "Mexico city, Mexico", "Antigua, Guatemala", "Guatemala city, Guatemala",
#           "San Salvador, Salvador", "San Pedro Sula, Honduras", "Managua, Nicaragua", "Tijuana, Mexico", "San Jose, Costa Rica", "Panama city, Panama", "Bogota, Columbia", "Georgetown, Guyana",
#           "Montevideo, Urugay", "Sao Paulo, Brazil", "Nairobi, Kenya", "Luanda, Angola", "Marseille, France", "Douala, Cameroon", "Abidjan, Ivory Coast", "Newcastle, England", "Glasgow, Wales", "Belfast, Ireland",
#           "Athens, Greece", "Dubrovnik, Croatia", "Kiev, Ukraine", "Tbilisi, Georgia"]


# picture1 = URI.open('https://ca.slack-edge.com/T02NE0241-U02H31YSNRW-6c5ebaa747f5-512')
# u1 = User.new(name: 'Cyprien',
#               email: "some.email@gmail.com",
#               phone_number: '003348483483',
#               address: '134 the best address',
#               bio: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer semper orci mi,
#                     eget tempus urna ullamcorper quis. In lacinia volutpat leo, vel pellentesque nulla
#                     fermentum elementum. Cras ullamcorper est at augue vestibulum, quis semper ex molestie.
#                     Morbi egestas euismod auctor. Maecenas nisl nunc, molestie in posuere sit amet, euismod a
#                     mauris. Pellentesque vel dui imperdiet, posuere turpis pulvinar, luctus massa. Fusce egestas
#                     ex non risus pulvinar, in fermentum enim ultrices.",
#               encrypted_password: "rkgjbsdalkfbsafkab",
#               password: "123456789")
# u1.photo.attach(io: picture1, filename: 'user.png', content_type: 'image/png')
# u1.save!

# picture2 = URI.open('https://ca.slack-edge.com/T02NE0241-U02H2FE2KKJ-3ef0a62b55c5-512')
# u2 = User.new(name: 'Maxime',
#               email: "max.gmail@hotmail.com",
#               phone_number: '003356473643',
#               address: '123 carrer de the street',
#               bio: "Ut dictum justo lobortis erat consequat, in facilisis felis luctus. Curabitur mollis
#                     imperdiet elit sed pulvinar. Nam suscipit mi quis aliquam suscipit. Pellentesque
#                     euismod vehicula massa et finibus. Suspendisse potenti. Integer nibh nulla,
#                     pharetra placerat consequat a, blandit a magna.",
#               encrypted_password: "akwfbsljfvhbweahf",
#               password: "123456789")
# u2.photo.attach(io: picture2, filename: 'user.png', content_type: 'image/png')
# u2.save!

# picture3 = URI.open('https://ca.slack-edge.com/T02NE0241-U02GF9LEYFL-b383a4af4854-512')
# u3 = User.new(name: 'Lucia',
#               email: "lucia.someeamil@hotmail.com",
#               phone_number: '0036453728362',
#               address: 'lewagons stretet 003456',
#               bio: "Ut dictum justo lobortis erat consequat, in facilisis felis luctus. Curabitur mollis
#               imperdiet elit sed pulvinar. Nam suscipit mi quis aliquam suscipit. Pellentesque euismod
#               vehicula massa et finibus. Suspendisse potenti. Integer nibh nulla, pharetra placerat consequat a, blandit a magna.",
#               encrypted_password: "askdfbskfbsaf",
#               password: "123456789")
# u3.photo.attach(io: picture3, filename: 'user.png', content_type: 'image/png')
# u3.save!

search_words = ["cooking", "local food", "traditional food", "dinner", "lunch", "asian food", "italian cuisine"]
cousine_types = ["Asian", "Traditional", "Social", "Creative", "Italian", "Catalan"]
meal_types = ["brunch", "unforgetable meal", "picknick", "dinner", "lunch", "family gathering", "friendly experience"]


counter = 0
# 20.times do
#   file = URI.open("https://images.unsplash.com/photo-1562033938-4c09d42b1c3f?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80")
#   exp = Experience.new(name: "#{cousine_types.sample} #{meal_types.sample}", description: "Full-service restaurants include casual to formal restaurants that often, but not always, prepare foods from scratch. These operations offer every style of foodservice from simple home-style cooking to sophisticated multi-course meals with elaborate table service. Many aspiring chefs choose these types of operations because they are more challenging and provide an outlet for expressing creativity in the kitchen. Hours of service in full-service restaurants are early to late depending on whether they service breakfast, lunch, or dinner. Most are open 6 or 7 days and week and many are open on holidays. Full-service restaurants include casual to formal restaurants that often, but not always, prepare foods from scratch. These operations offer every style of foodservice from simple home-style cooking to sophisticated multi-course meals with elaborate table service. Many aspiring chefs choose these types of operations because they are more challenging and provide an outlet for expressing creativity in the kitchen. Hours of service in full-service restaurants are early to late depending on whether they service breakfast, lunch, or dinner. Most are open 6 or 7 days and week and many are open on holidays.", address: cities[counter], price_per_hour: (5..100).to_a.sample, min_time: (1..10).to_a.sample, max_time: (1..24).to_a.sample, user_id: (1..3).to_a.sample)
#   exp.photo.attach(io: file, filename: 'wii.png', content_type: 'image/png')
#   exp.save!
#   counter += 1
#   puts "Created #{counter} experience"

#   file1 = URI.open('https://images.unsplash.com/photo-1471967183320-ee018f6e114a?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=2071&q=80')
#   exp1 = Experience.new(name: "#{cousine_types.sample} #{meal_types.sample}", description: "Full-service restaurants include casual to formal restaurants that often, but not always, prepare foods from scratch. These operations offer every style of foodservice from simple home-style cooking to sophisticated multi-course meals with elaborate table service. Many aspiring chefs choose these types of operations because they are more challenging and provide an outlet for expressing creativity in the kitchen. Hours of service in full-service restaurants are early to late depending on whether they service breakfast, lunch, or dinner. Most are open 6 or 7 days and week and many are open on holidays. Full-service restaurants include casual to formal restaurants that often, but not always, prepare foods from scratch. These operations offer every style of foodservice from simple home-style cooking to sophisticated multi-course meals with elaborate table service. Many aspiring chefs choose these types of operations because they are more challenging and provide an outlet for expressing creativity in the kitchen. Hours of service in full-service restaurants are early to late depending on whether they service breakfast, lunch, or dinner. Most are open 6 or 7 days and week and many are open on holidays.", address: cities[counter], price_per_hour: (5..100).to_a.sample, min_time: (1..10).to_a.sample, max_time: (1..24).to_a.sample, user_id: (1..3).to_a.sample)
#   exp1.photo.attach(io: file1, filename: 'wii1.png', content_type: 'image/png')
#   exp1.save!
#   counter += 1
#   puts "Created #{counter} experience"

#   file2 = URI.open("https://source.unsplash.com/1600x900/?#{search_words.sample}")
#   exp2 = Experience.new(name: "#{cousine_types.sample} #{meal_types.sample}", description: "Full-service restaurants include casual to formal restaurants that often, but not always, prepare foods from scratch. These operations offer every style of foodservice from simple home-style cooking to sophisticated multi-course meals with elaborate table service. Many aspiring chefs choose these types of operations because they are more challenging and provide an outlet for expressing creativity in the kitchen. Hours of service in full-service restaurants are early to late depending on whether they service breakfast, lunch, or dinner. Most are open 6 or 7 days and week and many are open on holidays. Full-service restaurants include casual to formal restaurants that often, but not always, prepare foods from scratch. These operations offer every style of foodservice from simple home-style cooking to sophisticated multi-course meals with elaborate table service. Many aspiring chefs choose these types of operations because they are more challenging and provide an outlet for expressing creativity in the kitchen. Hours of service in full-service restaurants are early to late depending on whether they service breakfast, lunch, or dinner. Most are open 6 or 7 days and week and many are open on holidays.", address: cities[counter], price_per_hour: (5..100).to_a.sample, min_time: (1..10).to_a.sample, max_time: (1..24).to_a.sample, user_id: (1..3).to_a.sample)
#   exp2.photo.attach(io: file2, filename: 'wii2.png', content_type: 'image/png')
#   exp2.save!
#   counter += 1
#   puts "Created #{counter} experience"

#   file3 = URI.open("https://source.unsplash.com/1600x900/?#{search_words.sample}")
#   exp3 = Experience.new(name: "#{cousine_types.sample} #{meal_types.sample}", description: "Full-service restaurants include casual to formal restaurants that often, but not always, prepare foods from scratch. These operations offer every style of foodservice from simple home-style cooking to sophisticated multi-course meals with elaborate table service. Many aspiring chefs choose these types of operations because they are more challenging and provide an outlet for expressing creativity in the kitchen. Hours of service in full-service restaurants are early to late depending on whether they service breakfast, lunch, or dinner. Most are open 6 or 7 days and week and many are open on holidays. Full-service restaurants include casual to formal restaurants that often, but not always, prepare foods from scratch. These operations offer every style of foodservice from simple home-style cooking to sophisticated multi-course meals with elaborate table service. Many aspiring chefs choose these types of operations because they are more challenging and provide an outlet for expressing creativity in the kitchen. Hours of service in full-service restaurants are early to late depending on whether they service breakfast, lunch, or dinner. Most are open 6 or 7 days and week and many are open on holidays.", address: cities[counter],  price_per_hour: (5..100).to_a.sample, min_time: (1..10).to_a.sample, max_time: (1..24).to_a.sample, user_id: (1..3).to_a.sample)
#   exp3.photo.attach(io: file3, filename: 'wii3.png', content_type: 'image/png')
#   exp3.save!
#   counter += 1
#   puts "Created #{counter} experience"
# end

# Barcelona seeds

file2 = URI.open("https://source.unsplash.com/1600x900/?#{search_words.sample}")
exp2 = Experience.new(name: "#{cousine_types.sample} #{meal_types.sample}",
                  description: "Full-service restaurants include casual to formal restaurants that often, but not always, prepare foods from scratch. These operations offer every style of foodservice from simple home-style cooking to sophisticated multi-course meals with elaborate table service. Many aspiring chefs choose these types of operations because they are more challenging and provide an outlet for expressing creativity in the kitchen. Hours of service in full-service restaurants are early to late depending on whether they service breakfast, lunch, or dinner. Most are open 6 or 7 days and week and many are open on holidays. Full-service restaurants include casual to formal restaurants that often, but not always, prepare foods from scratch. These operations offer every style of foodservice from simple home-style cooking to sophisticated multi-course meals with elaborate table service. Many aspiring chefs choose these types of operations because they are more challenging and provide an outlet for expressing creativity in the kitchen. Hours of service in full-service restaurants are early to late depending on whether they service breakfast, lunch, or dinner. Most are open 6 or 7 days and week and many are open on holidays.", address: "Ronda de Sant Pere, 35, Barcelona", price_per_hour: (5..100).to_a.sample, min_time: (1..10).to_a.sample, max_time: (1..24).to_a.sample, user_id: (1..3).to_a.sample)
exp2.photo.attach(io: file2, filename: 'wii2.png', content_type: 'image/png')
exp2.save!
counter += 1
puts "Created #{counter} experience"

file2 = URI.open("https://source.unsplash.com/1600x900/?#{search_words.sample}")
exp2 = Experience.new(name: "#{cousine_types.sample} #{meal_types.sample}",
                  description: "Full-service restaurants include casual to formal restaurants that often, but not always, prepare foods from scratch. These operations offer every style of foodservice from simple home-style cooking to sophisticated multi-course meals with elaborate table service. Many aspiring chefs choose these types of operations because they are more challenging and provide an outlet for expressing creativity in the kitchen. Hours of service in full-service restaurants are early to late depending on whether they service breakfast, lunch, or dinner. Most are open 6 or 7 days and week and many are open on holidays. Full-service restaurants include casual to formal restaurants that often, but not always, prepare foods from scratch. These operations offer every style of foodservice from simple home-style cooking to sophisticated multi-course meals with elaborate table service. Many aspiring chefs choose these types of operations because they are more challenging and provide an outlet for expressing creativity in the kitchen. Hours of service in full-service restaurants are early to late depending on whether they service breakfast, lunch, or dinner. Most are open 6 or 7 days and week and many are open on holidays.", address: "Avingunda de Vallcarca, 2, Barcelona", price_per_hour: (5..100).to_a.sample, min_time: (1..10).to_a.sample, max_time: (1..24).to_a.sample, user_id: (1..3).to_a.sample)
exp2.photo.attach(io: file2, filename: 'wii2.png', content_type: 'image/png')
exp2.save!
counter += 1
puts "Created #{counter} experience"

file2 = URI.open("https://source.unsplash.com/1600x900/?#{search_words.sample}")
exp2 = Experience.new(name: "#{cousine_types.sample} #{meal_types.sample}",
                  description: "Full-service restaurants include casual to formal restaurants that often, but not always, prepare foods from scratch. These operations offer every style of foodservice from simple home-style cooking to sophisticated multi-course meals with elaborate table service. Many aspiring chefs choose these types of operations because they are more challenging and provide an outlet for expressing creativity in the kitchen. Hours of service in full-service restaurants are early to late depending on whether they service breakfast, lunch, or dinner. Most are open 6 or 7 days and week and many are open on holidays. Full-service restaurants include casual to formal restaurants that often, but not always, prepare foods from scratch. These operations offer every style of foodservice from simple home-style cooking to sophisticated multi-course meals with elaborate table service. Many aspiring chefs choose these types of operations because they are more challenging and provide an outlet for expressing creativity in the kitchen. Hours of service in full-service restaurants are early to late depending on whether they service breakfast, lunch, or dinner. Most are open 6 or 7 days and week and many are open on holidays.", address: "Carrer de Massens, 5, Barcelona", price_per_hour: (5..100).to_a.sample, min_time: (1..10).to_a.sample, max_time: (1..24).to_a.sample, user_id: (1..3).to_a.sample)
exp2.photo.attach(io: file2, filename: 'wii2.png', content_type: 'image/png')
exp2.save!
counter += 1
puts "Created #{counter} experience"

# Category.create!(name: "Diner")
# Category.create!(name: "Wedding")
# Category.create!(name: "Catering")
