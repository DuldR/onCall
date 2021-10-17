# == Schema Information
#
# Table name: months
#
#  id          :bigint           not null, primary key
#  name        :string           not null
#  month_num   :integer          not null
#  month_start :date             not null
#  month_end   :date             not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  year        :date             not null
#
FactoryBot.define do
  factory :month do
    name {"January"}
    month_num {1}
    month_start {Date.new(2021,1,1)}
    month_end {Date.new(2021,1,31)}
  end
end
