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
class Swap < ApplicationRecord
    belongs_to :user
    has_one :shift

    def judge_swap(input)

    end
end
