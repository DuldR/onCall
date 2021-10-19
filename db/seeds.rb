# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

months = [1,2,3,4,5,6,7,8,9,10,11,12]

months.each do |month|
    seed_month = Month.new
    seed_month.month_num = month
    seed_month.save!
end

userArray = [
"Sanah Wills",
"Alaw Calvert",
"Hari Ashley",
"Kira Hawes",
"Billy Dawe",
"Devin Senior",
"Rizwan Shaw",
"Finn Arias",
"Zavier Henson",
"Bodhi Goodwin",
]

userArray.each do |user|
    newUser = User.create(name: user)
    startDate = Faker::Date.in_date_period
    stopDate = Faker::Date.between(from: startDate, to: (startDate + 5))
    newUser.add_shift(startDate, stopDate)
end

Swap.create(user_id: 1, shift_id: 1, target_id: 2, target_shift_id: 2)