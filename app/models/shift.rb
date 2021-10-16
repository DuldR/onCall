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
    validate :shift_end_cant_be_before_start


    belongs_to :month
    belongs_to :user


    def shift_end_cant_be_before_start
        print shift_start

        if shift_start < shift_end
            errors.add(:shift_end, "Invalid Shift Dates")
        end

    end


end
