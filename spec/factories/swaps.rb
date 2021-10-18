# == Schema Information
#
# Table name: swaps
#
#  id             :bigint           not null, primary key
#  origin_id      :integer          not null
#  origin_shift   :integer          not null
#  target_id      :integer          not null
#  target_shift   :integer          not null
#  origin_approve :boolean          default(TRUE)
#  target_approve :integer          default(0)
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#
FactoryBot.define do
  factory :swap do
    
  end
end
