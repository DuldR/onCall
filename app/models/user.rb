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

    def add_shift(start, end_date)
        new_shift = Shift.new(shift_start: start, shift_end: end_date, user_id: self.id, month_id: start.month)

        new_shift.save!

    end
    

end
