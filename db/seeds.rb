# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Article.destroy_all
AskForRdv.destroy_all
Donation.destroy_all
Message.destroy_all
Profile.destroy_all
Review.destroy_all
User.destroy_all

puts "***--- ADMIN #1 CREATION ---***"
  user = User.create!(
    email: "michel.staumont@wanadoo.fr",
    password: "123456",

  )
  prof = Profile.create!(
    first_name: "Michel",
    last_name: "STAUMONT",
    category: "admin",
    phone_number: "0661526441",
    birthday: "08/01/1948",
    address: "25 rue du cateau",
    post_code: 59550,
    city: "Landrecies",
    biographie: "Michel Staumont est né le 8 Janvier 1948. Il est le gérant de l'entreprise Eura Dentaire qui a été créée en 2001.",
    formation: "Faculté d'odontologie de Lille",
    photo: "",
    user_id: user.id,
  )

puts "***--- ADMIN #2 CREATION ---***"
  user = User.create!(
    email: "eric.magnier@apf.asso.fr",
    password: "123456",

  )
  prof = Profile.create!(
    first_name: "Eric",
    last_name: "MAGNIER",
    category: "admin",
    phone_number: "0671574545",
    birthday: "",
    address: "",
    post_code: 0,
    city: "",
    biographie: "",
    formation: "",
    photo: "",
    user_id: user.id,
  )

puts "***--- ADMIN #3 CREATION ---***"
  user = User.create!(
    email: "urapei.5962@gmail.com",
    password: "123456",

  )
  prof = Profile.create!(
    first_name: "Bruno",
    last_name: "CHEVRIER",
    category: "admin",
    phone_number: "0786139605",
    birthday: "",
    address: "",
    post_code: 0,
    city: "",
    biographie: "",
    formation: "",
    photo: "",
    user_id: user.id,
  )

puts "***--- ADMIN #4 CREATION ---***"
  user = User.create!(
    email: "bruno.andries@yahoo.fr",
    password: "123456",

  )
  prof = Profile.create!(
    first_name: "Bruno",
    last_name: "ANDRIES",
    category: "admin",
    phone_number: "0688188812",
    birthday: "",
    address: "",
    post_code: 0,
    city: "",
    biographie: "",
    formation: "",
    photo: "",
    user_id: user.id,
  )


puts "***--- ADMIN #5 CREATION ---***"
  user = User.create!(
    email: "ordre.npdc.mission@gmail.com",
    password: "123456",

  )
  prof = Profile.create!(
    first_name: "Sophie",
    last_name: "LEMAN",
    category: "admin",
    phone_number: "0620091410",
    birthday: "",
    address: "",
    post_code: 0,
    city: "",
    biographie: "",
    formation: "",
    photo: "",
    user_id: user.id,
  )












