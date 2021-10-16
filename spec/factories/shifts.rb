# == Schema Information
#
# Table name: shifts
#
#  id          :bigint           not null, primary key
#  shift_start :datetime         not null
#  shift_end   :datetime         not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  user_id     :integer
#  month_id    :integer
#
FactoryBot.define do
  factory :shift do
    user_id { 1 } 
    month_id { 1 }
    shift_start {DateTime.new(2021/1/1)}
    shift_end {DateTime.new(2021/1/2)}
  end
end
