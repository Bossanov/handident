# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Article.destroy_all
Meeting.destroy_all
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
    departement: "Nord",
    photo: "",
    user_id: user.id,
  )
art = Article.create!(
    article_title: "What is Lorem Ipsum?",
    article_content: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
    profile_id: prof.id,
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
    departement: "Nord",
    photo: "",
    user_id: user.id,
  )
art = Article.create!(
    article_title: "What is Lorem Ipsum?",
    article_content: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
    profile_id: prof.id,
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
    departement: "Nord",
    photo: "",
    user_id: user.id,
  )
art = Article.create!(
    article_title: "What is Lorem Ipsum?",
    article_content: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
    profile_id: prof.id,
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
    departement: "Nord",
    photo: "",
    user_id: user.id,
  )
art = Article.create!(
    article_title: "What is Lorem Ipsum?",
    article_content: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
    profile_id: prof.id,
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
    departement: "Nord",
    photo: "",
    user_id: user.id,
  )
art = Article.create!(
    article_title: "What is Lorem Ipsum?",
    article_content: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
    profile_id: prof.id,
  )
puts "***--- DENTIST #1 NORD CREATION ---***"
  user = User.create!(
    email: "dentiste1@gmail.com",
    password: "123456",

  )
  prof = Profile.create!(
    first_name: "Bruno",
    last_name: "ANDRIES",
    category: "Dentiste",
    phone_number: "0328438222",
    birthday: "",
    address: "rue du 8 mai 1945",
    post_code: 59253,
    city: "LA GORGUE",
    biographie: "",
    formation: "",
    departement: "Nord",
    photo: "",
    user_id: user.id,
  )
art = Article.create!(
    article_title: "What is Lorem Ipsum?",
    article_content: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
    profile_id: prof.id,
  )
puts "***--- DENTIST #2 NORD CREATION ---***"
  user = User.create!(
    email: "dentiste2@gmail.com",
    password: "123456",

  )
  prof = Profile.create!(
    first_name: "Tanya",
    last_name: "ARBAN",
    category: "Dentiste",
    phone_number: "0320913154",
    birthday: "",
    address: "33 chaussée de l'hôtel de ville",
    post_code: 59650,
    city: "VILLENEUVE D'ASCQ",
    biographie: "",
    formation: "",
    departement: "Nord",
    photo: "",
    user_id: user.id,
  )
art = Article.create!(
    article_title: "What is Lorem Ipsum?",
    article_content: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
    profile_id: prof.id,
  )

puts "***--- DENTIST #3 NORD CREATION ---***"
  user = User.create!(
    email: "dentiste3@gmail.com",
    password: "123456",

  )
  prof = Profile.create!(
    first_name: "Alain",
    last_name: "AUPETIT",
    category: "Dentiste",
    phone_number: "0320568143",
    birthday: "",
    address: "rue Roger Salengro",
    post_code: 59260,
    city: "HELLEMMES",
    biographie: "",
    formation: "",
    photo: "",
    departement: "Nord",
    user_id: user.id,
  )
art = Article.create!(
    article_title: "What is Lorem Ipsum?",
    article_content: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
    profile_id: prof.id,
  )

puts "***--- DENTIST #4 NORD CREATION ---***"
  user = User.create!(
    email: "dentiste4@gmail.com",
    password: "123456",

  )
  prof = Profile.create!(
    first_name: "Laurence",
    last_name: "BEAUVENTRE",
    category: "Dentiste",
    phone_number: "0320410224",
    birthday: "",
    address: "91 Route Nationale",
    post_code: 59152,
    city: "CHERENG",
    biographie: "",
    formation: "",
    photo: "",
    departement: "Nord",
    user_id: user.id,
  )
art = Article.create!(
    article_title: "What is Lorem Ipsum?",
    article_content: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
    profile_id: prof.id,
  )

puts "***--- DENTIST #5 NORD CREATION ---***"
  user = User.create!(
    email: "dentiste5@gmail.com",
    password: "123456",

  )
  prof = Profile.create!(
    first_name: "Marion",
    last_name: "BIECQ",
    category: "Dentiste",
    phone_number: "0320152424",
    birthday: "",
    address: "17, Boulevard Vauban",
    post_code: 59000,
    city: "LILLE",
    biographie: "",
    formation: "Orthodontiste",
    photo: "",
    departement: "Nord",
    user_id: user.id,
  )
  art = Article.create!(
    article_title: "What is Lorem Ipsum?",
    article_content: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
    profile_id: prof.id,
  )

puts "***--- DENTIST #1 PDC CREATION ---***"
  user = User.create!(
    email: "dentiste6@gmail.com",
    password: "123456",

  )
  prof = Profile.create!(
    first_name: "Peggy",
    last_name: "SZPAK",
    category: "Dentiste",
    phone_number: "0321626974",
    birthday: "",
    address: "245 bis, rue Jean Jaurès",
    post_code: 62122,
    city: "LAPUGNOY",
    biographie: "",
    formation: "",
    photo: "",
    departement: "Pas-de-Calais",
    user_id: user.id,
  )
  art = Article.create!(
    article_title: "What is Lorem Ipsum?",
    article_content: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
    profile_id: prof.id,
  )

puts "***--- DENTIST #2 PDC CREATION ---***"
  user = User.create!(
    email: "dentiste7@gmail.com",
    password: "123456",

  )
  prof = Profile.create!(
    first_name: "Chantal",
    last_name: "ANDRE",
    category: "Dentiste",
    phone_number: "0320152424",
    birthday: "",
    address: "149, rue des Hauts Champs",
    post_code: 62137,
    city: "COULOGNE",
    biographie: "",
    formation: "",
    photo: "",
    departement: "Pas-de-Calais",
    user_id: user.id,
  )
  art = Article.create!(
    article_title: "What is Lorem Ipsum?",
    article_content: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
    profile_id: prof.id,
  )

puts "***--- DENTIST #3 PDC CREATION ---***"
  user = User.create!(
    email: "dentiste8@gmail.com",
    password: "123456",

  )
  prof = Profile.create!(
    first_name: "Didier",
    last_name: "CATENNE",
    category: "Dentiste",
    phone_number: "0320152424",
    birthday: "",
    address: "3, rue des Frères Camus",
    post_code: 62219,
    city: "LONGUENESSE",
    biographie: "",
    formation: "",
    photo: "",
    departement: "Pas-de-Calais",
    user_id: user.id,
  )
  art = Article.create!(
    article_title: "What is Lorem Ipsum?",
    article_content: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
    profile_id: prof.id,
  )

puts "***--- DENTIST #4 PDC CREATION ---***"
  user = User.create!(
    email: "dentiste9@gmail.com",
    password: "123456",

  )
  prof = Profile.create!(
    first_name: "Anne-Sophie",
    last_name: "TAURINES",
    category: "Dentiste",
    phone_number: "0320152424",
    birthday: "",
    address: "Maison Médicale les Glycines - 24 bis rue du professeur Clerc",
    post_code: 62230,
    city: "OUTREAU",
    biographie: "",
    formation: "",
    photo: "",
    departement: "Pas-de-Calais",
    user_id: user.id,
  )
  art = Article.create!(
    article_title: "What is Lorem Ipsum?",
    article_content: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
    profile_id: prof.id,
  )

puts "***--- DENTIST #5 PDC CREATION ---***"
  user = User.create!(
    email: "dentiste10@gmail.com",
    password: "123456",

  )
  prof = Profile.create!(
    first_name: "Thierry",
    last_name: "DELCAMBRRE",
    category: "Dentiste",
    phone_number: "0321282650",
    birthday: "",
    address: "62, boulevard Basly",
    post_code: 62300,
    city: "LENS",
    biographie: "",
    formation: "",
    photo: "",
    departement: "Pas-de-Calais",
    user_id: user.id,
  )
  art = Article.create!(
    article_title: "What is Lorem Ipsum?",
    article_content: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
    profile_id: prof.id,
  )








