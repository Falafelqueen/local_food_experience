User.destroy_all
Experience.destroy_all

picture1 = URI.open('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTagX5ygFtGFEdJYYDJUz6yAAsP1UeQmEO6vQ&usqp=CAU')
u1 = User.new(name: 'Cyprien Eckert',
                   email: "some.email@gmail.com",
                   phone_number: '003348483483',
                   address: '134 the best address',
                  bio: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer semper orci mi, eget tempus urna ullamcorper quis. In lacinia volutpat leo, vel pellentesque nulla fermentum elementum. Cras ullamcorper est at augue vestibulum, quis semper ex molestie. Morbi egestas euismod auctor. Maecenas nisl nunc, molestie in posuere sit amet, euismod a mauris. Pellentesque vel dui imperdiet, posuere turpis pulvinar, luctus massa. Fusce egestas ex non risus pulvinar, in fermentum enim ultrices.",
                  encrypted_password: "rkgjbsdalkfbsafkab",
                  password: "123456789")
u1.photo.attach(io: picture1, filename: 'user.png', content_type: 'image/png')
u1.save!

picture2 = URI.open('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT2xF5w_TEgACMk-06l9zcZCs2W18IAQKNe_Q&usqp=CAU')
u2 = User.new(name: 'Maxime Mondet',
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
u3 = User.new(name: 'Lucia Harcegova',
                   email: "lucia.someeamil@hotmail.com",
                   phone_number: '0036453728362',
                   address: 'lewagons stretet 003456',
                   bio: "Ut dictum justo lobortis erat consequat, in facilisis felis luctus. Curabitur mollis imperdiet elit sed pulvinar.
Nam suscipit mi quis aliquam suscipit. Pellentesque euismod vehicula massa et finibus. Suspendisse potenti. Integer nibh nulla, pharetra placerat consequat a, blandit a magna.",
                   encrypted_password: "askdfbskfbsaf",
                  password: "123456789")
u3.photo.attach(io: picture3, filename: 'user.png', content_type: 'image/png')
u3.save!

file = URI.open('https://images.unsplash.com/photo-1528605248644-14dd04022da1?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=2070&q=80')
exp = Experience.new(name: "My Diner below the stars", description: "Ut dictum justo lobortis erat consequat, in facilisis felis luctus. Curabitur mollis imperdiet elit sed pulvinar.
  Nam suscipit mi quis aliquam suscipit.", price_per_hour: 48, min_time: 1, max_time: 24, user_id: 1, address: "Paris")
exp.photo.attach(io: file, filename: 'wii.png', content_type: 'image/png')
exp.save!

file1 = URI.open('https://images.unsplash.com/photo-1471967183320-ee018f6e114a?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=2071&q=80')
exp1 = Experience.new(name: "Child Exchange Event", description: "Ut dictum justo lobortis erat consequat, in facilisis felis luctus. Curabitur mollis imperdiet elit sed pulvinar.
Nam suscipit mi quis aliquam suscipit.", price_per_hour: 2, min_time: 1, max_time: 365, user_id: 2, address: "London")
exp1.photo.attach(io: file1, filename: 'wii1.png', content_type: 'image/png')
exp1.save!

file2 = URI.open('https://images.unsplash.com/photo-1516676237310-04deffe44aac?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=2070&q=80')
exp2 = Experience.new(name: "Falafel Flambing Flamingo", description: "Ut dictum justo lobortis erat consequat, in facilisis felis luctus. Curabitur mollis imperdiet elit sed pulvinar.
Nam suscipit mi quis aliquam suscipit.", price_per_hour: 120, min_time: 2, max_time: 4, user_id: 3, address: "Barcelona")
exp2.photo.attach(io: file2, filename: 'wii2.png', content_type: 'image/png')
exp2.save!

# Category.create!(name: "Diner")
# Category.create!(name: "Wedding")
# Category.create!(name: "Catering")
