User.destroy_all
Experience.destroy_all

User.create!(name: 'Cyprien Eckert',
                   email: "some.email@gmail.com",
                   phone_number: '003348483483',
                   address: '134 the best address',
                  bio: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer semper orci mi, eget tempus urna ullamcorper quis. In lacinia volutpat leo, vel pellentesque nulla fermentum elementum. Cras ullamcorper est at augue vestibulum, quis semper ex molestie. Morbi egestas euismod auctor. Maecenas nisl nunc, molestie in posuere sit amet, euismod a mauris. Pellentesque vel dui imperdiet, posuere turpis pulvinar, luctus massa. Fusce egestas ex non risus pulvinar, in fermentum enim ultrices.",
                  encrypted_password: "rkgjbsdalkfbsafkab",
                  password: "123456789")
User.create!(name: 'Maxime Mondet',
                   email: "max.gmail@hotmail.com",
                   phone_number: '003356473643',
                   address: '123 carrer de the street',
                   bio: "Ut dictum justo lobortis erat consequat, in facilisis felis luctus. Curabitur mollis imperdiet elit sed pulvinar.
Nam suscipit mi quis aliquam suscipit. Pellentesque euismod vehicula massa et finibus. Suspendisse potenti. Integer nibh nulla, pharetra placerat consequat a, blandit a magna.",
                   encrypted_password: "akwfbsljfvhbweahf",
                    password: "123456789")
User.create!(name: 'Lucia Harcegova',
                   email: "lucia.someeamil@hotmail.com",
                   phone_number: '0036453728362',
                   address: 'lewagons stretet 003456',
                   bio: "Ut dictum justo lobortis erat consequat, in facilisis felis luctus. Curabitur mollis imperdiet elit sed pulvinar.
Nam suscipit mi quis aliquam suscipit. Pellentesque euismod vehicula massa et finibus. Suspendisse potenti. Integer nibh nulla, pharetra placerat consequat a, blandit a magna.",
                   encrypted_password: "askdfbskfbsaf",
                  password: "123456789")

Experience.create!(name: "My Diner below the stars", description:"Ut dictum justo lobortis erat consequat, in facilisis felis luctus. Curabitur mollis imperdiet elit sed pulvinar.
Nam suscipit mi quis aliquam suscipit.", price_per_hour: 48, min_time: 1, max_time: 24, user_id: 1)

Experience.create(name: "Child Exchange Event", description:"Ut dictum justo lobortis erat consequat, in facilisis felis luctus. Curabitur mollis imperdiet elit sed pulvinar.
Nam suscipit mi quis aliquam suscipit.", price_per_hour: 2, min_time: 1, max_time: 365, user_id: 2)

Experience.create(name: "Falafel Flambing Flamingo", description:"Ut dictum justo lobortis erat consequat, in facilisis felis luctus. Curabitur mollis imperdiet elit sed pulvinar.
Nam suscipit mi quis aliquam suscipit.", price_per_hour: 120, min_time: 2, max_time: 4, user_id: 3)

Category.create!(name: "Diner")
Category.create!(name: "Wedding")
Category.create!(name: "Catering")
