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

Category.create!( category_id:   "music",
                  name: "Concerts & Tour Dates")

Category.create!( category_id:   "conference",
                  name: "Conferences & Tradeshows")
                  
Category.create!( category_id:   "comedy",
                  name: "Comedy")
                  
Category.create!( category_id:   "learning_education",
                  name: "Education")
                  
Category.create!( category_id:   "family_fun_kcategory_ids",
                  name: "Kcategory_ids & Family")

Category.create!( category_id:   "festivals_parades",
                  name: "Festivals")
                  
Category.create!( category_id:   "movies_film",
                  name: "Film")
                  
Category.create!( category_id:   "food",
                  name: "Food & Wine")
                  
Category.create!( category_id:   "fundraisers",
                  name: "Fundraising & Charity")

Category.create!( category_id:   "art",
                  name: "Art Galleries & Exhibits")
                  
Category.create!( category_id:   "support",
                  name: "Health & Wellness")
                  
Category.create!( category_id:   "holcategory_iday",
                  name: "Holcategory_iday")
                  
Category.create!( category_id:   "books",
                  name: "Literary & Books")

Category.create!( category_id:   "attractions",
                  name: "Museums & Attractions")
                  
Category.create!( category_id:   "community",
                  name: "Neighborhood")
                  
Category.create!( category_id:   "business",
                  name: "Business & Networking")
                  
Category.create!( category_id:   "singles_social",
                  name: "Nightlife & Singles")

Category.create!( category_id:   "schools_alumni",
                  name: "University & Alumni")
                  
Category.create!( category_id:   "clubs_associations",
                  name: "Organizations & Meetups")
                  
Category.create!( category_id:   "outdoors_recreation",
                  name: "Outdoors & Recreation")
                  
Category.create!( category_id:   "performing_arts",
                  name: "Performing Arts")

Category.create!( category_id:   "animals",
                  name: "Pets")
                  
Category.create!( category_id:   "politics_activism",
                  name: "Politics & Activism")
                  
Category.create!( category_id:   "sales",
                  name: "Sales & Retail")
                  
Category.create!( category_id:   "science",
                  name: "Science")

Category.create!( category_id:   "religion_spirituality",
                  name: "Religion & Spirituality")
                  
Category.create!( category_id:   "sports",
                  name: "Sports")
                  
Category.create!( category_id:   "technology",
                  name: "Technology")
                  
Category.create!( category_id:   "other",
                  name: "Other & Miscellaneous")