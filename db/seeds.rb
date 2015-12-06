# Users

User.create!( first_name:  "Ana",
              last_name:   "Cunha",
              email:       "ana@ccs.neu.edu",
              password:              "password",
              password_confirmation: "password",
              admin: true)

User.create!( first_name:  "Shiva",
              last_name:   "Chaturvedi",
              email:       "shivac@ccs.neu.edu",
              password:              "password",
              password_confirmation: "password",
              admin: true)

User.create!( first_name:  "Adam",
              last_name:   "Smith",
              email:       "apsmith@ccs.neu.edu",
              password:              "password",
              password_confirmation: "password",
              admin: true)

User.create!( first_name:  "Niharika",
              last_name:   "Sharma",
              email:       "nhrshm10@ccs.neu.edu",
              password:              "password",
              password_confirmation: "password",
              admin: true)

96.times do |n|
  first_name  = Faker::Name.first_name
  last_name   = Faker::Name.last_name
  email = Faker::Internet.safe_email(first_name + ' ' + last_name)
  password = "password"
  User.create!( first_name:  first_name,
                last_name:   last_name,
                email:       email,
                password:              password,
                password_confirmation: password)
end

# Categories

Category.create!( id:   "music",
                  name: "Concerts & Tour Dates")

Category.create!( id:   "conference",
                  name: "Conferences & Tradeshows")
                  
Category.create!( id:   "comedy",
                  name: "Comedy")
                  
Category.create!( id:   "learning_education",
                  name: "Education")
                  
Category.create!( id:   "family_fun_kids",
                  name: "Kids & Family")

Category.create!( id:   "festivals_parades",
                  name: "Festivals")
                  
Category.create!( id:   "movies_film",
                  name: "Film")
                  
Category.create!( id:   "food",
                  name: "Food & Wine")
                  
Category.create!( id:   "fundraisers",
                  name: "Fundraising & Charity")

Category.create!( id:   "art",
                  name: "Art Galleries & Exhibits")
                  
Category.create!( id:   "support",
                  name: "Health & Wellness")
                  
Category.create!( id:   "holiday",
                  name: "Holiday")
                  
Category.create!( id:   "books",
                  name: "Literary & Books")

Category.create!( id:   "attractions",
                  name: "Museums & Attractions")
                  
Category.create!( id:   "community",
                  name: "Neighborhood")
                  
Category.create!( id:   "business",
                  name: "Business & Networking")
                  
Category.create!( id:   "singles_social",
                  name: "Nightlife & Singles")

Category.create!( id:   "schools_alumni",
                  name: "University & Alumni")
                  
Category.create!( id:   "clubs_associations",
                  name: "Organizations & Meetups")
                  
Category.create!( id:   "outdoors_recreation",
                  name: "Outdoors & Recreation")
                  
Category.create!( id:   "performing_arts",
                  name: "Performing Arts")

Category.create!( id:   "animals",
                  name: "Pets")
                  
Category.create!( id:   "politics_activism",
                  name: "Politics & Activism")
                  
Category.create!( id:   "sales",
                  name: "Sales & Retail")
                  
Category.create!( id:   "science",
                  name: "Science")

Category.create!( id:   "religion_spirituality",
                  name: "Religion & Spirituality")
                  
Category.create!( id:   "sports",
                  name: "Sports")
                  
Category.create!( id:   "technology",
                  name: "Technology")
                  
Category.create!( id:   "other",
                  name: "Other & Miscellaneous")