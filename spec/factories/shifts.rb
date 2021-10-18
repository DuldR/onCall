# == Schema Information
#
# Table name: shifts
#
#  id          :bigint           not null, primary key
#  shift_start :date             not null
#  shift_end   :date             not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  user_id     :integer
#  month_id    :integer
#
FactoryBot.define do
  factory :shift do
    association :user
    association :month
    shift_start {Date.new(2021,1,1)}
    shift_end {Date.new(2021,1,2)}
    user_id { 1 } 
    month_id { 1 }
  end
end
