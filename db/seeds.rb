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

file = URI.open('https://1.bp.blogspot.com/_uUduIbP_YZM/TSZGIwZlbGI/AAAAAAAACvU/lN6Du8DM6JM/s400/Pedro.png')
exp = Experience.new(name: "My Diner below the stars", description: "Ut dictum justo lobortis erat consequat, in facilisis felis luctus. Curabitur mollis imperdiet elit sed pulvinar.
  Nam suscipit mi quis aliquam suscipit.", price_per_hour: 48, min_time: 1, max_time: 24, user_id: 1)
exp.photo.attach(io: file, filename: 'wii.png', content_type: 'image/png')
exp.save!

file1 = URI.open('https://i1.sndcdn.com/artworks-000548572188-xpquyk-t500x500.jpg')
exp1 = Experience.new(name: "Child Exchange Event", description: "Ut dictum justo lobortis erat consequat, in facilisis felis luctus. Curabitur mollis imperdiet elit sed pulvinar.
Nam suscipit mi quis aliquam suscipit.", price_per_hour: 2, min_time: 1, max_time: 365, user_id: 2)
exp1.photo.attach(io: file1, filename: 'wii1.png', content_type: 'image/png')
exp1.save!

file2 = URI.open('https://static.wikia.nocookie.net/w__/images/2/20/GuestA.png/revision/latest/scale-to-width-down/538?cb=20210528195604&path-prefix=wiisports')
exp2 = Experience.new(name: "Falafel Flambing Flamingo", description: "Ut dictum justo lobortis erat consequat, in facilisis felis luctus. Curabitur mollis imperdiet elit sed pulvinar.
Nam suscipit mi quis aliquam suscipit.", price_per_hour: 120, min_time: 2, max_time: 4, user_id: 3)
exp2.photo.attach(io: file2, filename: 'wii2.png', content_type: 'image/png')
exp2.save!

# Category.create!(name: "Diner")
# Category.create!(name: "Wedding")
# Category.create!(name: "Catering")
