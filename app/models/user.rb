# == Schema Information
#
# Table name: users
#
#  id           :bigint           not null, primary key
#  name         :string
#  on_call      :boolean          default(FALSE)
#  swap_request :boolean          default(FALSE)
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#
class User < ApplicationRecord

    validates :name, presence: true, uniqueness: true

    # User initiated shift swap
    has_many :swaps
    has_many :shifts

    # User pending approval swaps
    has_many :requests, :foreign_key => "target_id", :class_name => "Swap"

    after_find :is_scheduled?

    def add_shift(start, end_date)
        new_shift = Shift.new(shift_start: start, shift_end: end_date, user_id: self.id, month_id: start.month)

        new_shift.save!

    end

    private

    # Will update the users on call status if they have a shit for the current day
    # Could be refactored to update_attributes to fix the numerous save calls
    def is_scheduled?

        if self.shifts.empty?
            self.on_call = false
        else
            self.shifts.each do |shift|
                if Date.today.between?(shift.shift_start, shift.shift_end)
                    self.on_call = true
                    self.save!
                    return
                end

                self.on_call = false
            end
            
        end

        self.save!

    end
    

end
