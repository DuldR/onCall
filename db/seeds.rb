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

User.create(name: "TestMan")
User.create(name: "TestMan2")

Shift.create(shift_start: Date.new(2021,1,1), shift_end: Date.new(2021,1,2), user_id: 1, month_id: 1)
Shift.create(shift_start: Date.new(2021,1,1), shift_end: Date.new(2021,1,2), user_id: 1, month_id: 1)

Swap.create(user_id: 1, shift_id: 1, target_id: 2, target_shift_id: 2)