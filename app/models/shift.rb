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
class Shift < ApplicationRecord


    validates :shift_start, :shift_end, :month_id, :user_id, presence: true
    validate :is_a_date?
    validate :invalid_shift


    belongs_to :month
    belongs_to :user

    private

    # Validation methods
    def invalid_shift

        if shift_start == nil || shift_end == nil
            return false
        end

        if shift_start > shift_end
            errors.add(:shift_end, "Invalid Shift Dates")
        end

    end

    def is_a_date?

        if (shift_start.is_a?(Date) == false) || (shift_end.is_a?(Date)  == false)
            errors.add(:shift_end, "Invalid time entry")
        end
    end


end
