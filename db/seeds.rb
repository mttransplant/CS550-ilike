User.create!(first_name:  "Ana",
              last_name:   "Cunha",
              email:       "ana@ccs.neu.edu",
              password:              "password",
              password_confirmation: "password")

User.create!(first_name:  "Shiva",
              last_name:   "Chaturvedi",
              email:       "shivac@ccs.neu.edu",
              password:              "password",
              password_confirmation: "password")

User.create!(first_name:  "Adam",
              last_name:   "Smith",
              email:       "apsmith@ccs.neu.edu",
              password:              "password",
              password_confirmation: "password")

User.create!(first_name:  "Niharika",
              last_name:   "Sharma",
              email:       "nhrshm10@ccs.neu.edu",
              password:              "password",
              password_confirmation: "password")

96.times do |n|
  first_name  = Faker::Name.first_name
  last_name   = Faker::Name.last_name
  email = "#{first_name}.#{last_name}.#{n}@ilike.com"
  password = "password"
  User.create!(first_name:  first_name,
                last_name:   last_name,
                email:       email,
                password:              password,
                password_confirmation: password)
end