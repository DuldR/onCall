# == Schema Information
#
# Table name: swaps
#
#  id             :bigint           not null, primary key
#  user_id        :integer          not null
#  shift_id       :integer          not null
#  target_id      :integer          not null
#  target_shift   :integer          not null
#  origin_approve :boolean          default(TRUE)
#  target_approve :integer          default(0)
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#
FactoryBot.define do
  factory :swap do

    association :user

    user_id {1}
    user_shift {1}
    target_id {2}
    target_shift {2}
    origin_approve { true }
    target_approve { 0 }
    
  end
end
