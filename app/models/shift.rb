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
class Shift < ApplicationRecord

    validates :shift_start, :shift_end, :month_id, :user_id, presence: true


    belongs_to :month
    belongs_to :user

end
