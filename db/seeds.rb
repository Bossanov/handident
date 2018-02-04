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
count = 1

xls_file = Roo::Excelx.new('/Users/antoinestaumont/code/Bossanov/handident/db/data.xlsx')
s = Roo::CSV.new("/Users/antoinestaumont/code/Bossanov/handident/db/test.csv")

xls_file.to_csv("/Users/antoinestaumont/code/Bossanov/handident/db/test.csv")

CSV.foreach("/Users/antoinestaumont/code/Bossanov/handident/db/test.csv") do |row|


    puts "seed n° #{count}"
   if row[9] == "Ville"

   else
    user = User.create!(
    email: row[13],
    password: "123456"
  )
    prof = Profile.create!(
    first_name: row[7].capitalize,
    last_name: row[6].upcase,
    phone_number: row[10],
    address: row[7],
    post_code: row[8].to_i,
    city: row[9],
    user_id: user.id,
    formation: row[27],
    category: "Dentiste"
  )
    if row[8].to_i < 62000
      prof.departement = "Nord"
      prof.save
    else
      prof.departement = "Pas-de-Calais"
    end
    count += 1
  end
end



