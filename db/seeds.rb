require "faker"

User.destroy_all
Experience.destroy_all

CITIES = ["Barcelona, Spain", "Madrid, Spain", "Paris, France", "Lyon, France", "London, England", "Manchester, England",
          "Luxembourg, Luxembourg", "Berlin, Germany", "Munich, Germany", "Canberra, Australia", "Wellington, New Zealand",
          "Lima, Peru", "Washington, United States", "New York, United States", "Lisbon, Portugal", "Oslo, Norway", "Beijing, China",
          "Tokyo, Japan", "Dijon, France", "Stockholm, Sweden", "Bratislava, Slovakia"]


picture1 = URI.open('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTagX5ygFtGFEdJYYDJUz6yAAsP1UeQmEO6vQ&usqp=CAU')
u1 = User.new(name: 'Cyprien',
                   email: "some.email@gmail.com",
                   phone_number: '003348483483',
                   address: '134 the best address',
                  bio: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer semper orci mi, eget tempus urna ullamcorper quis. In lacinia volutpat leo, vel pellentesque nulla fermentum elementum. Cras ullamcorper est at augue vestibulum, quis semper ex molestie. Morbi egestas euismod auctor. Maecenas nisl nunc, molestie in posuere sit amet, euismod a mauris. Pellentesque vel dui imperdiet, posuere turpis pulvinar, luctus massa. Fusce egestas ex non risus pulvinar, in fermentum enim ultrices.",
                  encrypted_password: "rkgjbsdalkfbsafkab",
                  password: "123456789")
u1.photo.attach(io: picture1, filename: 'user.png', content_type: 'image/png')
u1.save!

picture2 = URI.open('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT2xF5w_TEgACMk-06l9zcZCs2W18IAQKNe_Q&usqp=CAU')
u2 = User.new(name: 'Maxime',
                   email: "max.gmail@hotmail.com",
                   phone_number: '003356473643',
                   address: '123 carrer de the street',
                   bio: "Ut dictum justo lobortis erat consequat, in facilisis felis luctus. Curabitur mollis imperdiet elit sed pulvinar.
Nam suscipit mi quis aliquam suscipit. Pellentesque euismod vehicula massa et finibus. Suspendisse potenti. Integer nibh nulla, pharetra placerat consequat a, blandit a magna.",
                   encrypted_password: "akwfbsljfvhbweahf",
                    password: "123456789")
u2.photo.attach(io: picture2, filename: 'user.png', content_type: 'image/png')
u2.save!

picture3 = URI.open('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT-pb-p7MF_saOSiu6JijE1g9DZL7VGZUNFTw&usqp=CAU')
u3 = User.new(name: 'Lucia',
                   email: "lucia.someeamil@hotmail.com",
                   phone_number: '0036453728362',
                   address: 'lewagons stretet 003456',
                   bio: "Ut dictum justo lobortis erat consequat, in facilisis felis luctus. Curabitur mollis imperdiet elit sed pulvinar.
Nam suscipit mi quis aliquam suscipit. Pellentesque euismod vehicula massa et finibus. Suspendisse potenti. Integer nibh nulla, pharetra placerat consequat a, blandit a magna.",
                   encrypted_password: "askdfbskfbsaf",
                  password: "123456789")
u3.photo.attach(io: picture3, filename: 'user.png', content_type: 'image/png')
u3.save!

search_words = ["cooking","local food","traditional food", "dinner", "lunch", "asian food", "italian cuisine"]
cousine_types = ["Asian", "Traditional", "Social", "Creative", "Italian", "Catalan"]
meal_types = ["brunch", "unforgetable meal", "picknick", "dinner", "lunch", "family gathering", "friendly experience"]

19.times do
  file = URI.open("https://images.unsplash.com/photo-1562033938-4c09d42b1c3f?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80")
  exp = Experience.new(name: "#{cousine_types.sample} #{meal_types.sample}", description: "Ut dictum justo lobortis erat consequat, in facilisis felis luctus. Curabitur mollis imperdiet elit sed pulvinar.
    Nam suscipit mi quis aliquam suscipit.", address: CITIES.sample, price_per_hour: (5..100).to_a.sample, min_time: (1..10).to_a.sample, max_time: (1..24).to_a.sample, user_id: (1..3).to_a.sample)
  exp.photo.attach(io: file, filename: 'wii.png', content_type: 'image/png')
  exp.save!

  file1 = URI.open('https://images.unsplash.com/photo-1471967183320-ee018f6e114a?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=2071&q=80')
  exp1 = Experience.new(name: "#{cousine_types.sample} #{meal_types.sample}", description: "Ut dictum justo lobortis erat consequat, in facilisis felis luctus. Curabitur mollis imperdiet elit sed pulvinar.
  Nam suscipit mi quis aliquam suscipit.", address: CITIES.sample, price_per_hour: (5..100).to_a.sample, min_time: (1..10).to_a.sample, max_time: (1..24).to_a.sample, user_id: (1..3).to_a.sample)
  exp1.photo.attach(io: file1, filename: 'wii1.png', content_type: 'image/png')
  exp1.save!

  file2 = URI.open("https://source.unsplash.com/1600x900/?#{search_words.sample}")
  exp2 = Experience.new(name: "#{cousine_types.sample} #{meal_types.sample}", description: "Ut dictum justo lobortis erat consequat, in facilisis felis luctus. Curabitur mollis imperdiet elit sed pulvinar.
  Nam suscipit mi quis aliquam suscipit.", address: CITIES.sample, price_per_hour: (5..100).to_a.sample, min_time: (1..10).to_a.sample, max_time: (1..24).to_a.sample, user_id: (1..3).to_a.sample)
  exp2.photo.attach(io: file2, filename: 'wii2.png', content_type: 'image/png')
  exp2.save!
  file3 = URI.open("https://source.unsplash.com/1600x900/?#{search_words.sample}")
  exp3 = Experience.new(name: "#{cousine_types.sample} #{meal_types.sample}", description: "Ut dictum justo lobortis erat consequat, in facilisis felis luctus. Curabitur mollis imperdiet elit sed pulvinar.
  Nam suscipit mi quis aliquam suscipit.", address: CITIES.sample,  price_per_hour: (5..100).to_a.sample, min_time: (1..10).to_a.sample, max_time: (1..24).to_a.sample, user_id: (1..3).to_a.sample)
  exp3.photo.attach(io: file3, filename: 'wii3.png', content_type: 'image/png')
  exp3.save!
end


# Category.create!(name: "Diner")
# Category.create!(name: "Wedding")
# Category.create!(name: "Catering")
